package it.ht.rcs.console.push
{
  import flash.events.Event;
  import flash.events.EventDispatcher;
  import flash.events.IEventDispatcher;
  import flash.events.TimerEvent;
  import flash.utils.Timer;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.events.SessionEvent;
  import it.ht.rcs.console.utils.AlertPopUp;
  
  import mx.core.FlexGlobals;
  import mx.formatters.DateFormatter;
  import mx.rpc.Fault;
  import mx.rpc.events.FaultEvent;
  
  public class PushController extends EventDispatcher
  {
    [Bindable]
    protected var socket:EMWebSocket;
    
    private var retryTimer:Timer;
    
    public static const CONNECTED:String    = 'connected';
    public static const CONNECTING:String   = 'connecting';
    public static const DISCONNECTED:String = 'disconnected';
    
    [Bindable]
    public var status:String = DISCONNECTED;
    
    /* singleton */
    private static var _instance:PushController = new PushController();
    public static function get instance():PushController { return _instance; }
    
    
    public function PushController(target:IEventDispatcher=null)
    {
      super(target);
      
      FlexGlobals.topLevelApplication.addEventListener(SessionEvent.LOGOUT, onLogout);
      
      retryTimer = new Timer(2000);
      retryTimer.addEventListener(TimerEvent.TIMER, onRetry);
    }
    
    private var lastHost:String;
    private var lastPort:int;
    private function onRetry(te:TimerEvent):void
    {
      connect(lastHost, lastPort);
    }
    
    public function connect(host:String, port:int):void
    {
      lastHost = host;
      lastPort = port;
      
      socket = new EMWebSocket("wss://" + host + ":" + port.toString() + "/");
      socket.addEventListener(EMWebSocketEvent.CONNECT, onConnect);
      socket.addEventListener(EMWebSocketEvent.MESSAGE, onMessage);
      socket.addEventListener(EMWebSocketEvent.CLOSE, onClose);
//      socket.addEventListener(EMWebSocketEvent.IO_ERROR, onError);
//      socket.addEventListener(EMWebSocketEvent.CONNECT_ERROR, onError);
//      socket.addEventListener(EMWebSocketEvent.SECURITY_ERROR, onError);
    }
    
    protected function onConnect(event:EMWebSocketEvent):void {
      // on connection we send our cookie to link the websocket to the currentSession in the db
      socket.send(JSON.stringify({ type: 'auth', cookie: Console.currentSession.cookie }));
    }
    
    protected function onError(event:EMWebSocketEvent):void {
      trace("ws: something went wrong");
    }

    protected function onClose(event:EMWebSocketEvent):void {
      trace("ws: connection closed");
      status = CONNECTING;
      retryTimer.start();
    }
    
    protected function onLogout(e:SessionEvent):void
    {
      status = DISCONNECTED;
      
      retryTimer.stop();
      
      if (socket)
        socket.close();  
    }
       
    protected function onMessage(event:EMWebSocketEvent):void{
      trace('ws: got message: ' + event.data);
      
      var message:Object = JSON.parse(event.data);
      
      switch (message.type) {
        case 'auth':
          onAuth(message);
          break;
        case 'ping':
          onPing();
          break;
        default:
          handleEvent(message);
          break;
      }
    }
    
    protected function onAuth(message:Object):void
    {
      status = CONNECTED;
      
      retryTimer.stop();
      
      /* invalid auth */
      if (message.result != 'granted')
        backToLogin("auth", "invalid auth");
      
      var now:Date = new Date();
      var epoch:Number = Math.round(now.time/1000);

      trace("server time: " + message.time + " time is: " + epoch.toString());
      /* check if we are desync with the server */
      if (Math.abs(epoch - parseInt(message.time)) > 60) {
        var server_now:Date = new Date(parseInt(message.time) * 1000);
        var clockFormatter:DateFormatter = new DateFormatter();
        clockFormatter.formatString = "YYYY-MM-DD JJ:NN:SS";

        AlertPopUp.show("Your current time is: " + clockFormatter.format(now) + "\nbut server time is: " + clockFormatter.format(server_now) + "\n\nPlease synchronize the clock", "Clock desync detected");
      }
    }
    
    protected function onPing():void
    {
      send({type: 'pong'});
    }
    
    public function send(message:Object):void
    {
      var encoded:String = JSON.stringify(message);
      trace('ws: sent message: ' + encoded); 
      socket.send(encoded);
    }
    
    private function backToLogin(code:String, string:String):void
    {
      var f:Fault = new Fault(code, string);
      var e:FaultEvent = new FaultEvent("ws", false, false, f);
      DB.notifier.fault(e);
    }
    
    private function handleEvent(message:Object):void
    {
      var event:PushEvent; 
      
      switch (message['type']) {
        case 'monitor':
          trace('PushManager: dispatching MONITOR event');
          event = new PushEvent(PushEvent.MONITOR);
          event.data = message;
          break;
        case 'monitor_counters':
          trace('PushManager: dispatching MONITOR event');
          event = new PushEvent(PushEvent.MONITOR_COUNTERS);
          event.data = message;
          break;
        case 'dashboard':
          trace('PushManager: dispatching DASHBOARD event');
          event = new PushEvent(PushEvent.DASHBOARD);
          event.data = message;
          break;
        case 'alert':
          trace('PushManager: dispatching ALERT event');
          event = new PushEvent(PushEvent.ALERT);
          event.data = message;
          break;
        case 'operation':
          trace('PushManager: dispatching OPERATION event');
          event = new PushEvent(PushEvent.OPERATION);
          event.data = message;
          break;
        case 'target':
          trace('PushManager: dispatching TARGET event');
          event = new PushEvent(PushEvent.TARGET);
          event.data = message;
          break;
        case 'entity':
          trace('PushManager: dispatching ENTITY event');
          event = new PushEvent(PushEvent.ENTITY);
          event.data = message;
          break;
        case 'agent':
          trace('PushManager: dispatching AGENT event');
          event = new PushEvent(PushEvent.AGENT);
          event.data = message;
          break;
        case 'agent-config':
          trace('PushManager: dispatching AGENT-CONFIG event');
          event = new PushEvent(PushEvent.AGENT_CONFIG);
          event.data = message;
          break;
        case 'factory':
          trace('PushManager: dispatching FACTORY event');
          event = new PushEvent(PushEvent.FACTORY);
          event.data = message;
          break;
        case 'filesystem':
          trace('PushManager: dispatching FILESYSTEM event');
          event = new PushEvent(PushEvent.FILESYSTEM);
          event.data = message;
          break;
        case 'user':
          trace('PushManager: dispatching USER event');
          event = new PushEvent(PushEvent.USER);
          event.data = message;
          break;
        case 'group':
          trace('PushManager: dispatching GROUP event');
          event = new PushEvent(PushEvent.GROUP);
          event.data = message;
          break;
        case 'backupjob':
          trace('PushManager: dispatching BACKUP event');
          event = new PushEvent(PushEvent.BACKUPJOB);
          event.data = message;
          break;
        case 'message':
          trace('PushManager: MESSAGE event');
          event = new PushEvent(PushEvent.MESSAGE);
          event.data = message;
          var from:String = "Message From: ";
          if (message['from'])
            from += message ['from'];
          // display the message
          AlertPopUp.show(message['text'], from);
          break;
        case 'logout':
          event = new PushEvent(PushEvent.LOGOUT);
          // display the message
          AlertPopUp.show(message['text'], 'Logout');
          backToLogin('error', message.text);
          break
        
        case 'modem_info':
          event = new PushEvent(PushEvent.MODEM_INFO);
          // display the message
        trace("modem autodetection complete")
          break
        
        
        default:
          trace('PushManager: UNKNOWN event');
          event = new PushEvent(PushEvent.UNKNOWN);
          event.data = message;
          break;
      }
      
      dispatchEvent(event);
    }
    
  }
}