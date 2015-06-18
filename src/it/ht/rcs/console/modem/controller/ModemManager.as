package it.ht.rcs.console.modem.controller
{
	import it.ht.rcs.console.DB;
	import it.ht.rcs.console.ObjectUtils;
	import it.ht.rcs.console.controller.ItemManager;
	import it.ht.rcs.console.modem.model.Modem;
	import it.ht.rcs.console.monitor.controller.MonitorManager;
	import it.ht.rcs.console.notifications.NotificationPopup;

	import mx.collections.ArrayCollection;
	import mx.rpc.events.ResultEvent;

	public class ModemManager extends ItemManager
	{
		private static var _instance:ModemManager=new ModemManager();


		public function ModemManager()
		{
		}

		public static function get instance():ModemManager
		{
			return _instance;
		}

		override public function refresh():void
		{
			super.refresh();
			DB.instance.modem.all(onResult)
		}

		public function addModem(m:Object, callback:Function):void
		{
			DB.instance.modem.create(m, function(e:ResultEvent):void
			{
				var modem:Modem=e.result as Modem;
				addItem(modem);
				callback(modem);
			});
		}

		public function updateModem(m:Modem, callback:Function):void
		{
			DB.instance.modem.update(m, ObjectUtils.toHash(m), function(e:ResultEvent):void
			{
				callback(m);
			});
		}


		public function getAvailableModems():ArrayCollection
		{
			var result:ArrayCollection=new ArrayCollection
			for (var i:int=0; i < this.getView().length; i++)
			{
				var modem:Modem=this.getView().getItemAt(i) as Modem
				if (MonitorManager.instance.getStatusByAddress(modem.port).status == "0")
					result.addItem(modem)
			}
			return result;
		}

		private function onResult(e:ResultEvent):void
		{
			clear();
			for each (var item:* in e.result.source)
				addItem(item);
			dispatchDataLoadedEvent();
		}

		public function autodetect():void
		{
			var popup:NotificationPopup=NotificationPopup.showNotification("Autodetection in progress. Please wait...", 0, false, true)
			DB.instance.modem.autodetect(function(e:ResultEvent):void
			{
				NotificationPopup.hide(popup)
				refresh()
			});
		}

		public function removeModem(m:Modem):void
		{
			DB.instance.modem.destroy(m._id, function(e:ResultEvent):void
			{
				refresh()
			});
		}
	}
}
