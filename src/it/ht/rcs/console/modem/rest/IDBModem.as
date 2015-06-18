package it.ht.rcs.console.modem.rest
{
  import it.ht.rcs.console.modem.model.Modem;

  public interface IDBModem
  {
    function all(onResult:Function=null, onFault:Function=null):void;
    function create(params:Object, onResult:Function=null, onFault:Function=null):void;
    function update(modem:Modem, params:Object, onResult:Function=null, onFault:Function=null):void;
    function destroy(id:String, onResult:Function=null, onFault:Function=null):void;
    function autodetect(onResult:Function=null, onFault:Function=null):void;
  }
}