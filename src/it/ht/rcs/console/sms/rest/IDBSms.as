package it.ht.rcs.console.sms.rest
{
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.modem.model.Modem;
  import it.ht.rcs.console.sms.model.Oob_event;
  import it.ht.rcs.console.sms.model.Sms;


  public interface IDBSms
  {
    function all(agent:Agent, onResult:Function=null, onFault:Function=null):void;
    function send(agent:Agent, modem:Modem, command:Oob_event, onResult:Function=null, onFault:Function=null):void;
    
  }
  
}