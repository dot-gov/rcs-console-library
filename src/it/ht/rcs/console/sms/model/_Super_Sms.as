/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Sms.as.
 */

package it.ht.rcs.console.sms.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Sms extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _SmsEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_sender : String;
    private var _internal_incoming : Boolean;
    private var _internal_command : String;
    private var _internal_rcpt : String;
    private var _internal_agent_id : String;
    private var _internal_text : String;
    private var _internal_received_at : String;
    private var _internal_updated_at : String;
    private var _internal_direction : String;
    private var _internal_created_at : String;
    private var _internal_sent_at : String;
    private var _internal_rr : Boolean;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Sms()
    {
        _model = new _SmsEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "sender", model_internal::setterListenerSender));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "command", model_internal::setterListenerCommand));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rcpt", model_internal::setterListenerRcpt));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "agent_id", model_internal::setterListenerAgent_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "text", model_internal::setterListenerText));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "received_at", model_internal::setterListenerReceived_at));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "updated_at", model_internal::setterListenerUpdated_at));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "direction", model_internal::setterListenerDirection));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "created_at", model_internal::setterListenerCreated_at));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "sent_at", model_internal::setterListenerSent_at));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get sender() : String
    {
        return _internal_sender;
    }

    [Bindable(event="propertyChange")]
    public function get incoming() : Boolean
    {
        return _internal_incoming;
    }

    [Bindable(event="propertyChange")]
    public function get command() : String
    {
        return _internal_command;
    }

    [Bindable(event="propertyChange")]
    public function get rcpt() : String
    {
        return _internal_rcpt;
    }

    [Bindable(event="propertyChange")]
    public function get agent_id() : String
    {
        return _internal_agent_id;
    }

    [Bindable(event="propertyChange")]
    public function get text() : String
    {
        return _internal_text;
    }

    [Bindable(event="propertyChange")]
    public function get received_at() : String
    {
        return _internal_received_at;
    }

    [Bindable(event="propertyChange")]
    public function get updated_at() : String
    {
        return _internal_updated_at;
    }

    [Bindable(event="propertyChange")]
    public function get direction() : String
    {
        return _internal_direction;
    }

    [Bindable(event="propertyChange")]
    public function get created_at() : String
    {
        return _internal_created_at;
    }

    [Bindable(event="propertyChange")]
    public function get sent_at() : String
    {
        return _internal_sent_at;
    }

    [Bindable(event="propertyChange")]
    public function get rr() : Boolean
    {
        return _internal_rr;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set sender(value:String) : void
    {
        var oldValue:String = _internal_sender;
        if (oldValue !== value)
        {
            _internal_sender = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sender", oldValue, _internal_sender));
        }
    }

    public function set incoming(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_incoming;
        if (oldValue !== value)
        {
            _internal_incoming = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "incoming", oldValue, _internal_incoming));
        }
    }

    public function set command(value:String) : void
    {
        var oldValue:String = _internal_command;
        if (oldValue !== value)
        {
            _internal_command = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "command", oldValue, _internal_command));
        }
    }

    public function set rcpt(value:String) : void
    {
        var oldValue:String = _internal_rcpt;
        if (oldValue !== value)
        {
            _internal_rcpt = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rcpt", oldValue, _internal_rcpt));
        }
    }

    public function set agent_id(value:String) : void
    {
        var oldValue:String = _internal_agent_id;
        if (oldValue !== value)
        {
            _internal_agent_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agent_id", oldValue, _internal_agent_id));
        }
    }

    public function set text(value:String) : void
    {
        var oldValue:String = _internal_text;
        if (oldValue !== value)
        {
            _internal_text = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "text", oldValue, _internal_text));
        }
    }

    public function set received_at(value:String) : void
    {
        var oldValue:String = _internal_received_at;
        if (oldValue !== value)
        {
            _internal_received_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "received_at", oldValue, _internal_received_at));
        }
    }

    public function set updated_at(value:String) : void
    {
        var oldValue:String = _internal_updated_at;
        if (oldValue !== value)
        {
            _internal_updated_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_at", oldValue, _internal_updated_at));
        }
    }

    public function set direction(value:String) : void
    {
        var oldValue:String = _internal_direction;
        if (oldValue !== value)
        {
            _internal_direction = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "direction", oldValue, _internal_direction));
        }
    }

    public function set created_at(value:String) : void
    {
        var oldValue:String = _internal_created_at;
        if (oldValue !== value)
        {
            _internal_created_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_at", oldValue, _internal_created_at));
        }
    }

    public function set sent_at(value:String) : void
    {
        var oldValue:String = _internal_sent_at;
        if (oldValue !== value)
        {
            _internal_sent_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sent_at", oldValue, _internal_sent_at));
        }
    }

    public function set rr(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_rr;
        if (oldValue !== value)
        {
            _internal_rr = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rr", oldValue, _internal_rr));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerSender(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSender();
    }

    model_internal function setterListenerCommand(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCommand();
    }

    model_internal function setterListenerRcpt(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRcpt();
    }

    model_internal function setterListenerAgent_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAgent_id();
    }

    model_internal function setterListenerText(value:flash.events.Event):void
    {
        _model.invalidateDependentOnText();
    }

    model_internal function setterListenerReceived_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnReceived_at();
    }

    model_internal function setterListenerUpdated_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUpdated_at();
    }

    model_internal function setterListenerDirection(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDirection();
    }

    model_internal function setterListenerCreated_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCreated_at();
    }

    model_internal function setterListenerSent_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSent_at();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */
    

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.senderIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_senderValidationFailureMessages);
        }
        if (!_model.commandIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_commandValidationFailureMessages);
        }
        if (!_model.rcptIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_rcptValidationFailureMessages);
        }
        if (!_model.agent_idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_agent_idValidationFailureMessages);
        }
        if (!_model.textIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_textValidationFailureMessages);
        }
        if (!_model.received_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_received_atValidationFailureMessages);
        }
        if (!_model.updated_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_updated_atValidationFailureMessages);
        }
        if (!_model.directionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_directionValidationFailureMessages);
        }
        if (!_model.created_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_created_atValidationFailureMessages);
        }
        if (!_model.sent_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sent_atValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _SmsEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SmsEntityMetadata) : void
    {
        var oldValue : _SmsEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfSender : Array = null;
    model_internal var _doValidationLastValOfSender : String;

    model_internal function _doValidationForSender(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSender != null && model_internal::_doValidationLastValOfSender == value)
           return model_internal::_doValidationCacheOfSender ;

        _model.model_internal::_senderIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSenderAvailable && _internal_sender == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "sender is required"));
        }

        model_internal::_doValidationCacheOfSender = validationFailures;
        model_internal::_doValidationLastValOfSender = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCommand : Array = null;
    model_internal var _doValidationLastValOfCommand : String;

    model_internal function _doValidationForCommand(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCommand != null && model_internal::_doValidationLastValOfCommand == value)
           return model_internal::_doValidationCacheOfCommand ;

        _model.model_internal::_commandIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCommandAvailable && _internal_command == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "command is required"));
        }

        model_internal::_doValidationCacheOfCommand = validationFailures;
        model_internal::_doValidationLastValOfCommand = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRcpt : Array = null;
    model_internal var _doValidationLastValOfRcpt : String;

    model_internal function _doValidationForRcpt(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRcpt != null && model_internal::_doValidationLastValOfRcpt == value)
           return model_internal::_doValidationCacheOfRcpt ;

        _model.model_internal::_rcptIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRcptAvailable && _internal_rcpt == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rcpt is required"));
        }

        model_internal::_doValidationCacheOfRcpt = validationFailures;
        model_internal::_doValidationLastValOfRcpt = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAgent_id : Array = null;
    model_internal var _doValidationLastValOfAgent_id : String;

    model_internal function _doValidationForAgent_id(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAgent_id != null && model_internal::_doValidationLastValOfAgent_id == value)
           return model_internal::_doValidationCacheOfAgent_id ;

        _model.model_internal::_agent_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAgent_idAvailable && _internal_agent_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "agent_id is required"));
        }

        model_internal::_doValidationCacheOfAgent_id = validationFailures;
        model_internal::_doValidationLastValOfAgent_id = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfText : Array = null;
    model_internal var _doValidationLastValOfText : String;

    model_internal function _doValidationForText(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfText != null && model_internal::_doValidationLastValOfText == value)
           return model_internal::_doValidationCacheOfText ;

        _model.model_internal::_textIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTextAvailable && _internal_text == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "text is required"));
        }

        model_internal::_doValidationCacheOfText = validationFailures;
        model_internal::_doValidationLastValOfText = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfReceived_at : Array = null;
    model_internal var _doValidationLastValOfReceived_at : String;

    model_internal function _doValidationForReceived_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfReceived_at != null && model_internal::_doValidationLastValOfReceived_at == value)
           return model_internal::_doValidationCacheOfReceived_at ;

        _model.model_internal::_received_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isReceived_atAvailable && _internal_received_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "received_at is required"));
        }

        model_internal::_doValidationCacheOfReceived_at = validationFailures;
        model_internal::_doValidationLastValOfReceived_at = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUpdated_at : Array = null;
    model_internal var _doValidationLastValOfUpdated_at : String;

    model_internal function _doValidationForUpdated_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUpdated_at != null && model_internal::_doValidationLastValOfUpdated_at == value)
           return model_internal::_doValidationCacheOfUpdated_at ;

        _model.model_internal::_updated_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUpdated_atAvailable && _internal_updated_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "updated_at is required"));
        }

        model_internal::_doValidationCacheOfUpdated_at = validationFailures;
        model_internal::_doValidationLastValOfUpdated_at = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDirection : Array = null;
    model_internal var _doValidationLastValOfDirection : String;

    model_internal function _doValidationForDirection(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDirection != null && model_internal::_doValidationLastValOfDirection == value)
           return model_internal::_doValidationCacheOfDirection ;

        _model.model_internal::_directionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDirectionAvailable && _internal_direction == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "direction is required"));
        }

        model_internal::_doValidationCacheOfDirection = validationFailures;
        model_internal::_doValidationLastValOfDirection = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCreated_at : Array = null;
    model_internal var _doValidationLastValOfCreated_at : String;

    model_internal function _doValidationForCreated_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCreated_at != null && model_internal::_doValidationLastValOfCreated_at == value)
           return model_internal::_doValidationCacheOfCreated_at ;

        _model.model_internal::_created_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCreated_atAvailable && _internal_created_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "created_at is required"));
        }

        model_internal::_doValidationCacheOfCreated_at = validationFailures;
        model_internal::_doValidationLastValOfCreated_at = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSent_at : Array = null;
    model_internal var _doValidationLastValOfSent_at : String;

    model_internal function _doValidationForSent_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSent_at != null && model_internal::_doValidationLastValOfSent_at == value)
           return model_internal::_doValidationCacheOfSent_at ;

        _model.model_internal::_sent_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSent_atAvailable && _internal_sent_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "sent_at is required"));
        }

        model_internal::_doValidationCacheOfSent_at = validationFailures;
        model_internal::_doValidationLastValOfSent_at = value;

        return validationFailures;
    }
    

}

}
