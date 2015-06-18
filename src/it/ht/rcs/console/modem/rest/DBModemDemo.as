package it.ht.rcs.console.modem.rest
{
  import it.ht.rcs.console.modem.model.Modem;

  public class DBModemDemo implements IDBModem
  {
    public function DBModemDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {}
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {}
    
    public function update(modem:Modem, params:Object, onResult:Function=null, onFault:Function=null):void
    {}
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {}
    
    public function autodetect(onResult:Function=null, onFault:Function=null):void
    {}
  }
}