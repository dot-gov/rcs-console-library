/**
 * This is a generated sub-class of _Modem.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class.
 *
 * NOTE: Do not manually modify the RemoteClass mapping unless
 * your server representation of this class has changed and you've
 * updated your ActionScriptGeneration,RemoteClass annotation on the
 * corresponding entity
 **/

package it.ht.rcs.console.modem.model
{

	import com.adobe.fiber.core.model_internal;
	
	import it.ht.rcs.console.DB;

	public class Modem extends _Super_Modem
	{
		/**
		 * DO NOT MODIFY THIS STATIC INITIALIZER - IT IS NECESSARY
		 * FOR PROPERLY SETTING UP THE REMOTE CLASS ALIAS FOR THIS CLASS
		 *
		 **/

		/**
		 * Calling this static function will initialize RemoteClass aliases
		 * for this value object as well as all of the value objects corresponding
		 * to entities associated to this value object's entity.
		 */

		public static function defaultModem():Object
		{
			return {_id: '', name: DB.i18n.get('NEW_MODEM')};
		}

		public function Modem(data:Object=null)
		{
			if (data)
			{
				_id=data._id;
				number=data.number;
				name=data.name
				port=data.port;
			}
		}

		public static function _initRemoteClassAlias():void
		{
			_Super_Modem.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.modem.model.Modem);
			_Super_Modem.model_internal::initRemoteClassAliasAllRelated();
		}

		model_internal static function initRemoteClassAliasSingleChild():void
		{
			_Super_Modem.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.modem.model.Modem);
		}

		{
			_Super_Modem.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.modem.model.Modem);
		}
	/**
	 * END OF DO NOT MODIFY SECTION
	 *
	 **/
	}

}
