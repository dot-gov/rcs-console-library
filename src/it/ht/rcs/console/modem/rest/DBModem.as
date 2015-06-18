/**
 * This is a generated sub-class of _DBModem.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class.
 **/

package it.ht.rcs.console.modem.rest
{
	import it.ht.rcs.console.DB;
	import it.ht.rcs.console.modem.model.Modem;
	
	import mx.rpc.CallResponder;

	public class DBModem extends _Super_DBModem implements IDBModem
	{

		public function DBModem(host:String)
		{
			super();
			_serviceControl.baseURL=host;
		}

		/**
		 * Override super.init() to provide any initialization customization if needed.
		 */
		protected override function preInitializeService():void
		{

			super.preInitializeService();
			// Initialization customization goes here
		}

		public function all(onResult:Function=null, onFault:Function=null):void
		{
			var resp:CallResponder=DB.getCallResponder(onResult, onFault);
			resp.token=resp.token=all_();
		}

		public function create(params:Object, onResult:Function=null, onFault:Function=null):void
		{
			var resp:CallResponder=DB.getCallResponder(onResult, onFault);
			resp.token=create_(JSON.stringify(params));
		}
    
    public function update(modem:Modem, params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder=DB.getCallResponder(onResult, onFault);
      params['_id'] = modem._id;
      resp.token=update_(JSON.stringify(params));
    }

		public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
		{
			var resp:CallResponder=DB.getCallResponder(onResult, onFault);
			resp.token=destroy_(JSON.stringify({_id: id}));
		}
    
    public function autodetect(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder=DB.getCallResponder(onResult, onFault);
      resp.token=autodetect_();
    }
	}

}
