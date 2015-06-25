/**
 * This is a generated sub-class of _DBSms.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.sms.rest
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.modem.model.Modem;
  import it.ht.rcs.console.sms.model.Oob_event;
  
  import mx.rpc.CallResponder;

public class DBSms extends _Super_DBSms implements IDBSms
{
  
  public function DBSms(host:String)
  {
    super();
    _serviceControl.baseURL = host;
  }
  
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {

        super.preInitializeService();
        // Initialization customization goes here
    }
    
    public function all(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder=DB.getCallResponder(onResult, onFault);
      resp.token=all_(agent._id);
    }
    
    public function send(agent:Agent, modem:Modem, command:Oob_event, onResult:Function=null, onFault:Function=null):void
    {
    
      var resp:CallResponder=DB.getCallResponder(onResult, onFault);
      var params:Object=new Object
      params['agent_id'] = agent._id;
      params['modem_id'] = modem._id;
      params['event_name'] = command.name;
      params['event_text'] = command.text;
      resp.token=send_(JSON.stringify(params));
    
    }
               
}

}
