package it.ht.rcs.console.evidence.rest
{
  import it.ht.rcs.console.evidence.model.Evidence;
  import it.ht.rcs.console.evidence.model.Filter;
  

  public interface IDBEvidence
  {
    function all(filter: Object, onResult:Function = null, onFault:Function = null):void;
    function update(evidence:Evidence, property:Object, target:String, onResult:Function=null, onFault:Function=null):void;
    function agent_status(params: Object, onResult:Function = null, onFault:Function = null):void;
	  function info(filter: Object, onResult:Function = null, onFault:Function = null):void;
    function commands(filter: Object, onResult:Function = null, onFault:Function = null):void;
    function sync_history(filter: Object, onResult:Function = null, onFault:Function = null):void;
    function sync_start(params: Object, onResult:Function = null, onFault:Function = null):void;
    function sync_stop(params: Object, onResult:Function = null, onFault:Function = null):void;
    function total(params: Object, onResult:Function = null, onFault:Function = null):void;
    //function filesystem(targetId:String, agentId:String, filter:String, onResult:Function = null, onFault:Function = null):void;
    function filesystem(targetId:String, agentId:String, path:String, onResult:Function = null, onFault:Function = null):void;
    function filesystem_search(targetId:String, agentId:String, search:String, start:int=0, onResult:Function = null, onFault:Function = null):void;
    function show(id:String, target:String, onResult:Function = null, onFault:Function = null):void;
    function destroy(evidence:Evidence, target:String, onResult:Function=null, onFault:Function=null):void;
    function destroy_all(params: Object, onResult:Function=null, onFault:Function=null):void;
    function filter_all(onResult:Function=null, onFault:Function=null):void;
    function filter_create(filter:Object, onResult:Function=null, onFault:Function=null):void
    function filter_destroy(filter:Filter, onResult:Function=null, onFault:Function=null):void;
    function translate(id:String, target:String, onResult:Function=null, onFault:Function=null):void;
    function update_multi(evidences:Array, property:Object, target:String, onResult:Function=null, onFault:Function=null):void
  }
}