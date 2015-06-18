package it.ht.rcs.console.sms.rest
{
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.modem.model.Modem;
  
  public class DBSmsDemo implements IDBSms
  {
    public function DBSmsDemo()
    {
    }
    
    public function all(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function send(agent:Agent, modem:Modem, command:String, onResult:Function=null, onFault:Function=null):void
    {
    }
  }
}