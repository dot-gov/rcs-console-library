package it.ht.rcs.console.agent.controller
{
	import flash.events.Event;
	
	import it.ht.rcs.console.DB;
	import it.ht.rcs.console.DefaultConfigBuilder;
	import it.ht.rcs.console.ObjectUtils;
	import it.ht.rcs.console.agent.model.Agent;
	import it.ht.rcs.console.agent.model.Command;
	import it.ht.rcs.console.agent.model.Config;
	import it.ht.rcs.console.controller.ItemManager;
	import it.ht.rcs.console.dashboard.controller.DashboardController;
	import it.ht.rcs.console.operation.model.Operation;
	import it.ht.rcs.console.push.PushController;
	import it.ht.rcs.console.push.PushEvent;
	import it.ht.rcs.console.search.controller.SearchManager;
	import it.ht.rcs.console.search.model.Stat;
	import it.ht.rcs.console.search.model.StatEvidence;
	import it.ht.rcs.console.target.model.Target;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ListCollectionView;
	import mx.events.CollectionEvent;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class AgentManager extends ItemManager
	{

		public function AgentManager()
		{
			super(Agent);
			//PushController.instance.addEventListener(PushEvent.AGENT, onAgentPush);
			//PushController.instance.addEventListener(PushEvent.FACTORY, onAgentPush);
		}
    
    public function listenAgentPush():void
    {
      PushController.instance.addEventListener( PushEvent.AGENT, onAgentPush);
    }
    public function listenFactoryPush():void
    {
      PushController.instance.addEventListener( PushEvent.FACTORY, onAgentPush);
    }
    
    
    public function unlistenAgentPush():void
    {
      PushController.instance.removeEventListener( PushEvent.AGENT, onAgentPush);
    }
    
    public function unlistenFactoryPush():void
    {
      PushController.instance.removeEventListener( PushEvent.FACTORY, onAgentPush);
    }

		private static var _instance:AgentManager=new AgentManager();

		public static function get instance():AgentManager
		{
			return _instance;
		}

		override public function refresh():void
		{
			super.refresh();
			DB.instance.agent.all(onResult);
		}

		private function onResult(e:ResultEvent):void
		{
			clear();
			for each (var item:* in e.result.source)
				addItem(item);
			dispatchDataLoadedEvent();
      _items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
		}


		private function onAgentPush(e:PushEvent):void
		{
			//show(e.data.id as String);
			//refresh();

			var a:Agent;
      
			switch (e.data.action)
			{
				case PushEvent.CREATE:
					trace("agent creation");
          if(e.data.type=="agent")
          {
            var evidence:StatEvidence=new StatEvidence(e.data.changes.stat.evidence)
            e.data.changes.stat.evidence=evidence;
            var dashboard:StatEvidence=new StatEvidence(e.data.changes.stat.dashboard)
            e.data.changes.stat.dashboard=dashboard;
            
            var stat:Stat=new Stat(e.data.changes.stat)
            e.data.changes.stat=stat
          }
					a=new Agent(e.data.changes);
          if(!getItem(e.data.id))
					addItem(a);
					break;
        
				case PushEvent.MODIFY:
					a=getItem(e.data.id)
					if (a)
          {
          _items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
					//Is a factory deletion 
					if (e.data.changes.deleted)
					{
						trace("agent deletion");
						removeItem(a)
					}
					else
					{
						trace("agent update");
						for (var property:String in e.data.changes)
						{
							a[property]=e.data.changes[property];
						}
					}
         _items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          }
          
					break;
				case PushEvent.DESTROY:
					trace("agent deletion");
				
          a=getItem(e.data.id)
          if (a)
          {
					removeItem(a)
          }
					break;
			}
    
			dispatchEvent(new Event("dataPush"))
		}

		override protected function onItemUpdate(event:*):void
		{
			var property:Object=new Object();
			property[event.property]=event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
			DB.instance.agent.update(event.source, property);
		}

		public function addConfig(agent:Agent, config:String, callback:Function=null, faultCallback:Function=null):void
		{
			var obj:Object=JSON.parse(config)
			DB.instance.agent.add_config(agent, config, function(e:ResultEvent):void
			{
				if (callback != null)
					callback(e.result);
			}, function(e:FaultEvent):void
			{
				faultCallback(e)
			});
		}

		public function addFactory(f:Agent, o:Operation, t:Target, callback:Function):void
		{
			DB.instance.agent.create(ObjectUtils.toHash(f), o, t, function(e1:ResultEvent):void
			{
				var factory:Agent=e1.result as Agent;
				var defaultConfig:Object=DefaultConfigBuilder.getDefaultConfig(factory);
				AgentManager.instance.addConfig(factory, JSON.stringify(defaultConfig), function(c:Config):void
				{
					addItem(factory);
					SearchManager.instance.showItem(factory._id);
					callback(factory);
				});
			});
		}

		// Se l'elemento non e' presente, ma la show me lo ritorna, lo aggiungo. In ogni caso, aggiorno il search manager.
		public function show(_id:String, onResult:Function=null):void
		{
			DB.instance.agent.show(_id, function(re:ResultEvent):void
			{
				var a:Agent=getItem(_id);
				if (a == null)
					addItem(re.result);

				SearchManager.instance.showItem(_id);

				if (onResult != null)
					onResult(re);
			}, function(fe:FaultEvent):void
			{
				SearchManager.instance.showItem(_id);
			});
		}

		public function upgrade(a:Agent):void
		{
			a.upgradable=true;
			DB.instance.agent.upgrade(a);
		}

		public function delAgent(a:Object, permanent:Boolean=false):void
		{
			removeItem(a);
			DB.instance.agent.destroy(a._id, permanent, function(re:ResultEvent):void
			{ // we use this method to use the permament flag
				DashboardController.instance.removeItem(DashboardController.instance.getItem(a._id));
			});
		}

		public function delFactory(f:Object, permanent:Boolean=false):void
		{
			removeItem(f);
			DB.instance.agent.destroy_factory(f._id, permanent, function(re:ResultEvent):void
			{ // we use this method to use the permament flag
				DashboardController.instance.removeItem(DashboardController.instance.getItem(f._id));
			});
		}

		public function getDownloads(agent:Agent, callback:Function):void
		{
			DB.instance.agent.downloads(agent, callback);
		}

		public function getFilesystems(agent:Agent, callback:Function):void
		{
			DB.instance.agent.filesystems(agent, callback);
		}

		public function getCommands(agent:Agent, onResult:Function=null, onFault:Function=null):void
		{
			DB.instance.agent.commands(agent, onResult, onFault);
		}

		public function createCommand(agent:Agent, command:String, onResult:Function=null, onFault:Function=null):void
		{
			DB.instance.agent.create_command(agent, command, onResult, onFault);
		}

		public function deleteCommand(agent:Agent, command:Command, onResult:Function=null, onFault:Function=null):void
		{
			DB.instance.agent.destroy_command(agent, command._id, onResult, onFault);
		}


		public function createDownload(agentId:String, path:String, callback:Function=null):void
		{
			DB.instance.agent.create_download(agentId, path, callback);
		}

		public function deleteDownload(agent:Agent, downloadId:String, callback:Function=null):void
		{
			DB.instance.agent.destroy_download(agent, downloadId, callback);
		}

		public function deleteFilesystem(agent:Agent, filesystemId:String, onResult:Function=null, onFault:Function=null):void
		{
			DB.instance.agent.destroy_filesystem(agent, filesystemId, onResult, onFault);
		}


		public function deleteUpload(agent:Agent, uploadId:String, callback:Function=null):void
		{
			DB.instance.agent.destroy_upload(agent, uploadId, callback);
		}


		public function getUploads(agent:Agent, callback:Function):void
		{
			DB.instance.agent.uploads(agent, callback);
		}

		public function createUpload(agent:Agent, filename:String, grid:String, callback:Function=null):void
		{
			DB.instance.agent.create_upload(agent, filename, grid, callback);
		}

		public function filesystem(agentId:String, path:String, depth:int, callback:Function=null, faultCallback:Function=null):void
		{
			DB.instance.agent.filesystem(agentId, path, depth, callback, faultCallback);
		}

		public function purge(agentId:String, time:Number, size:Number, onResult:Function=null, onFault:Function=null):void
		{
			DB.instance.agent.purge(agentId, time, size, onResult, onFault)
		}

		public function getMobileFactoriesForTarget(targetId:String):ListCollectionView
		{
			return getView(null, function(item:Object):Boolean
			{
				return (item is Agent && item._kind == 'factory' && item.type == 'mobile' && item.path[1] == targetId);
			});
		}

		public function getFactoriesForOperation(operationId:String):ListCollectionView
		{
			return getView(null, function(item:Object):Boolean
			{
				return (item is Agent && item._kind == 'factory' && item.path.length == 1 && item.path[0] == operationId);
			});
		}

		public function getAgentsForTarget(targetId:String):ListCollectionView
		{
			return getView(null, function(item:Object):Boolean
			{
				return (item is Agent && item._kind == 'agent' && item.path[1] == targetId);
			});
		}

		public function activateGhost(agent:Agent, sync:Array, resultCallback:Function, faultCallback:Function):void
		{
			DB.instance.agent.activate_ghost(agent, sync, resultCallback, faultCallback);
		}

		public function canUpgrade(agent:Agent, resultCallback:Function, faultCallback:Function=null):void
		{
			DB.instance.agent.can_upgrade(agent, resultCallback, faultCallback);
		}
    
    public function soldier_version(agent:Agent, resultCallback:Function, faultCallback:Function=null):void
    {
      DB.instance.agent.soldier_version(agent, resultCallback, faultCallback);
    }
    
    public function oob_events(agent:Agent, resultCallback:Function, faultCallback:Function=null):void
    {
      DB.instance.agent.oob_events(agent, resultCallback, faultCallback);
    }

		public function updateConfig(agent:Agent, config:Config, desc:String, callback:Function=null):void
		{
			config.desc=desc;
			DB.instance.agent.update_config(agent, config._id, desc, function(e:ResultEvent):void
			{
				if (callback != null)
					callback(e);
			});
		}

	}

}
