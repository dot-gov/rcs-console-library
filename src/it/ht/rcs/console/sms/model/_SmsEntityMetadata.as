
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.sms.model
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import it.ht.rcs.console.sms.model.Oob_event;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _SmsEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("sender", "incoming", "command", "rcpt", "agent_id", "text", "received_at", "updated_at", "direction", "created_at", "sent_at", "rr", "oob_event", "sender_name", "rcpt_name");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("sender", "incoming", "command", "rcpt", "agent_id", "text", "received_at", "updated_at", "direction", "created_at", "sent_at", "rr", "oob_event", "sender_name", "rcpt_name");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("sender", "incoming", "command", "rcpt", "agent_id", "text", "received_at", "updated_at", "direction", "created_at", "sent_at", "rr", "oob_event", "sender_name", "rcpt_name");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("sender", "incoming", "command", "rcpt", "agent_id", "text", "received_at", "updated_at", "direction", "created_at", "sent_at", "rr", "oob_event", "sender_name", "rcpt_name");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("sender", "incoming", "command", "rcpt", "agent_id", "text", "received_at", "updated_at", "direction", "created_at", "sent_at", "rr", "oob_event", "sender_name", "rcpt_name");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Sms";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _senderIsValid:Boolean;
    model_internal var _senderValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _senderIsValidCacheInitialized:Boolean = false;
    model_internal var _senderValidationFailureMessages:Array;
    
    model_internal var _commandIsValid:Boolean;
    model_internal var _commandValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _commandIsValidCacheInitialized:Boolean = false;
    model_internal var _commandValidationFailureMessages:Array;
    
    model_internal var _rcptIsValid:Boolean;
    model_internal var _rcptValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rcptIsValidCacheInitialized:Boolean = false;
    model_internal var _rcptValidationFailureMessages:Array;
    
    model_internal var _agent_idIsValid:Boolean;
    model_internal var _agent_idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _agent_idIsValidCacheInitialized:Boolean = false;
    model_internal var _agent_idValidationFailureMessages:Array;
    
    model_internal var _textIsValid:Boolean;
    model_internal var _textValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _textIsValidCacheInitialized:Boolean = false;
    model_internal var _textValidationFailureMessages:Array;
    
    model_internal var _received_atIsValid:Boolean;
    model_internal var _received_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _received_atIsValidCacheInitialized:Boolean = false;
    model_internal var _received_atValidationFailureMessages:Array;
    
    model_internal var _updated_atIsValid:Boolean;
    model_internal var _updated_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _updated_atIsValidCacheInitialized:Boolean = false;
    model_internal var _updated_atValidationFailureMessages:Array;
    
    model_internal var _directionIsValid:Boolean;
    model_internal var _directionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _directionIsValidCacheInitialized:Boolean = false;
    model_internal var _directionValidationFailureMessages:Array;
    
    model_internal var _created_atIsValid:Boolean;
    model_internal var _created_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _created_atIsValidCacheInitialized:Boolean = false;
    model_internal var _created_atValidationFailureMessages:Array;
    
    model_internal var _sent_atIsValid:Boolean;
    model_internal var _sent_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sent_atIsValidCacheInitialized:Boolean = false;
    model_internal var _sent_atValidationFailureMessages:Array;
    
    model_internal var _oob_eventIsValid:Boolean;
    model_internal var _oob_eventValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _oob_eventIsValidCacheInitialized:Boolean = false;
    model_internal var _oob_eventValidationFailureMessages:Array;
    
    model_internal var _sender_nameIsValid:Boolean;
    model_internal var _sender_nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sender_nameIsValidCacheInitialized:Boolean = false;
    model_internal var _sender_nameValidationFailureMessages:Array;
    
    model_internal var _rcpt_nameIsValid:Boolean;
    model_internal var _rcpt_nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rcpt_nameIsValidCacheInitialized:Boolean = false;
    model_internal var _rcpt_nameValidationFailureMessages:Array;

    model_internal var _instance:_Super_Sms;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _SmsEntityMetadata(value : _Super_Sms)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["sender"] = new Array();
            model_internal::dependentsOnMap["incoming"] = new Array();
            model_internal::dependentsOnMap["command"] = new Array();
            model_internal::dependentsOnMap["rcpt"] = new Array();
            model_internal::dependentsOnMap["agent_id"] = new Array();
            model_internal::dependentsOnMap["text"] = new Array();
            model_internal::dependentsOnMap["received_at"] = new Array();
            model_internal::dependentsOnMap["updated_at"] = new Array();
            model_internal::dependentsOnMap["direction"] = new Array();
            model_internal::dependentsOnMap["created_at"] = new Array();
            model_internal::dependentsOnMap["sent_at"] = new Array();
            model_internal::dependentsOnMap["rr"] = new Array();
            model_internal::dependentsOnMap["oob_event"] = new Array();
            model_internal::dependentsOnMap["sender_name"] = new Array();
            model_internal::dependentsOnMap["rcpt_name"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["sender"] = "String";
        model_internal::propertyTypeMap["incoming"] = "Boolean";
        model_internal::propertyTypeMap["command"] = "String";
        model_internal::propertyTypeMap["rcpt"] = "String";
        model_internal::propertyTypeMap["agent_id"] = "String";
        model_internal::propertyTypeMap["text"] = "String";
        model_internal::propertyTypeMap["received_at"] = "String";
        model_internal::propertyTypeMap["updated_at"] = "String";
        model_internal::propertyTypeMap["direction"] = "String";
        model_internal::propertyTypeMap["created_at"] = "String";
        model_internal::propertyTypeMap["sent_at"] = "String";
        model_internal::propertyTypeMap["rr"] = "Boolean";
        model_internal::propertyTypeMap["oob_event"] = "it.ht.rcs.console.sms.model.Oob_event";
        model_internal::propertyTypeMap["sender_name"] = "String";
        model_internal::propertyTypeMap["rcpt_name"] = "String";

        model_internal::_instance = value;
        model_internal::_senderValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSender);
        model_internal::_senderValidator.required = true;
        model_internal::_senderValidator.requiredFieldError = "sender is required";
        //model_internal::_senderValidator.source = model_internal::_instance;
        //model_internal::_senderValidator.property = "sender";
        model_internal::_commandValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCommand);
        model_internal::_commandValidator.required = true;
        model_internal::_commandValidator.requiredFieldError = "command is required";
        //model_internal::_commandValidator.source = model_internal::_instance;
        //model_internal::_commandValidator.property = "command";
        model_internal::_rcptValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRcpt);
        model_internal::_rcptValidator.required = true;
        model_internal::_rcptValidator.requiredFieldError = "rcpt is required";
        //model_internal::_rcptValidator.source = model_internal::_instance;
        //model_internal::_rcptValidator.property = "rcpt";
        model_internal::_agent_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAgent_id);
        model_internal::_agent_idValidator.required = true;
        model_internal::_agent_idValidator.requiredFieldError = "agent_id is required";
        //model_internal::_agent_idValidator.source = model_internal::_instance;
        //model_internal::_agent_idValidator.property = "agent_id";
        model_internal::_textValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForText);
        model_internal::_textValidator.required = true;
        model_internal::_textValidator.requiredFieldError = "text is required";
        //model_internal::_textValidator.source = model_internal::_instance;
        //model_internal::_textValidator.property = "text";
        model_internal::_received_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForReceived_at);
        model_internal::_received_atValidator.required = true;
        model_internal::_received_atValidator.requiredFieldError = "received_at is required";
        //model_internal::_received_atValidator.source = model_internal::_instance;
        //model_internal::_received_atValidator.property = "received_at";
        model_internal::_updated_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUpdated_at);
        model_internal::_updated_atValidator.required = true;
        model_internal::_updated_atValidator.requiredFieldError = "updated_at is required";
        //model_internal::_updated_atValidator.source = model_internal::_instance;
        //model_internal::_updated_atValidator.property = "updated_at";
        model_internal::_directionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDirection);
        model_internal::_directionValidator.required = true;
        model_internal::_directionValidator.requiredFieldError = "direction is required";
        //model_internal::_directionValidator.source = model_internal::_instance;
        //model_internal::_directionValidator.property = "direction";
        model_internal::_created_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCreated_at);
        model_internal::_created_atValidator.required = true;
        model_internal::_created_atValidator.requiredFieldError = "created_at is required";
        //model_internal::_created_atValidator.source = model_internal::_instance;
        //model_internal::_created_atValidator.property = "created_at";
        model_internal::_sent_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSent_at);
        model_internal::_sent_atValidator.required = true;
        model_internal::_sent_atValidator.requiredFieldError = "sent_at is required";
        //model_internal::_sent_atValidator.source = model_internal::_instance;
        //model_internal::_sent_atValidator.property = "sent_at";
        model_internal::_oob_eventValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOob_event);
        model_internal::_oob_eventValidator.required = true;
        model_internal::_oob_eventValidator.requiredFieldError = "oob_event is required";
        //model_internal::_oob_eventValidator.source = model_internal::_instance;
        //model_internal::_oob_eventValidator.property = "oob_event";
        model_internal::_sender_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSender_name);
        model_internal::_sender_nameValidator.required = true;
        model_internal::_sender_nameValidator.requiredFieldError = "sender_name is required";
        //model_internal::_sender_nameValidator.source = model_internal::_instance;
        //model_internal::_sender_nameValidator.property = "sender_name";
        model_internal::_rcpt_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRcpt_name);
        model_internal::_rcpt_nameValidator.required = true;
        model_internal::_rcpt_nameValidator.requiredFieldError = "rcpt_name is required";
        //model_internal::_rcpt_nameValidator.source = model_internal::_instance;
        //model_internal::_rcpt_nameValidator.property = "rcpt_name";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity Sms");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity Sms");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Sms");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Sms");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Sms");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Sms");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isSenderAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIncomingAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCommandAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRcptAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAgent_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTextAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isReceived_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUpdated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDirectionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSent_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRrAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOob_eventAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSender_nameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRcpt_nameAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnSender():void
    {
        if (model_internal::_senderIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSender = null;
            model_internal::calculateSenderIsValid();
        }
    }
    public function invalidateDependentOnCommand():void
    {
        if (model_internal::_commandIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCommand = null;
            model_internal::calculateCommandIsValid();
        }
    }
    public function invalidateDependentOnRcpt():void
    {
        if (model_internal::_rcptIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRcpt = null;
            model_internal::calculateRcptIsValid();
        }
    }
    public function invalidateDependentOnAgent_id():void
    {
        if (model_internal::_agent_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAgent_id = null;
            model_internal::calculateAgent_idIsValid();
        }
    }
    public function invalidateDependentOnText():void
    {
        if (model_internal::_textIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfText = null;
            model_internal::calculateTextIsValid();
        }
    }
    public function invalidateDependentOnReceived_at():void
    {
        if (model_internal::_received_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfReceived_at = null;
            model_internal::calculateReceived_atIsValid();
        }
    }
    public function invalidateDependentOnUpdated_at():void
    {
        if (model_internal::_updated_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUpdated_at = null;
            model_internal::calculateUpdated_atIsValid();
        }
    }
    public function invalidateDependentOnDirection():void
    {
        if (model_internal::_directionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDirection = null;
            model_internal::calculateDirectionIsValid();
        }
    }
    public function invalidateDependentOnCreated_at():void
    {
        if (model_internal::_created_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCreated_at = null;
            model_internal::calculateCreated_atIsValid();
        }
    }
    public function invalidateDependentOnSent_at():void
    {
        if (model_internal::_sent_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSent_at = null;
            model_internal::calculateSent_atIsValid();
        }
    }
    public function invalidateDependentOnOob_event():void
    {
        if (model_internal::_oob_eventIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOob_event = null;
            model_internal::calculateOob_eventIsValid();
        }
    }
    public function invalidateDependentOnSender_name():void
    {
        if (model_internal::_sender_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSender_name = null;
            model_internal::calculateSender_nameIsValid();
        }
    }
    public function invalidateDependentOnRcpt_name():void
    {
        if (model_internal::_rcpt_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRcpt_name = null;
            model_internal::calculateRcpt_nameIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get senderStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get senderValidator() : StyleValidator
    {
        return model_internal::_senderValidator;
    }

    model_internal function set _senderIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_senderIsValid;         
        if (oldValue !== value)
        {
            model_internal::_senderIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "senderIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get senderIsValid():Boolean
    {
        if (!model_internal::_senderIsValidCacheInitialized)
        {
            model_internal::calculateSenderIsValid();
        }

        return model_internal::_senderIsValid;
    }

    model_internal function calculateSenderIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_senderValidator.validate(model_internal::_instance.sender)
        model_internal::_senderIsValid_der = (valRes.results == null);
        model_internal::_senderIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::senderValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::senderValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get senderValidationFailureMessages():Array
    {
        if (model_internal::_senderValidationFailureMessages == null)
            model_internal::calculateSenderIsValid();

        return _senderValidationFailureMessages;
    }

    model_internal function set senderValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_senderValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_senderValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "senderValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get incomingStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get commandStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get commandValidator() : StyleValidator
    {
        return model_internal::_commandValidator;
    }

    model_internal function set _commandIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_commandIsValid;         
        if (oldValue !== value)
        {
            model_internal::_commandIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "commandIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get commandIsValid():Boolean
    {
        if (!model_internal::_commandIsValidCacheInitialized)
        {
            model_internal::calculateCommandIsValid();
        }

        return model_internal::_commandIsValid;
    }

    model_internal function calculateCommandIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_commandValidator.validate(model_internal::_instance.command)
        model_internal::_commandIsValid_der = (valRes.results == null);
        model_internal::_commandIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::commandValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::commandValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get commandValidationFailureMessages():Array
    {
        if (model_internal::_commandValidationFailureMessages == null)
            model_internal::calculateCommandIsValid();

        return _commandValidationFailureMessages;
    }

    model_internal function set commandValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_commandValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_commandValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "commandValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get rcptStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rcptValidator() : StyleValidator
    {
        return model_internal::_rcptValidator;
    }

    model_internal function set _rcptIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rcptIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rcptIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rcptIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rcptIsValid():Boolean
    {
        if (!model_internal::_rcptIsValidCacheInitialized)
        {
            model_internal::calculateRcptIsValid();
        }

        return model_internal::_rcptIsValid;
    }

    model_internal function calculateRcptIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rcptValidator.validate(model_internal::_instance.rcpt)
        model_internal::_rcptIsValid_der = (valRes.results == null);
        model_internal::_rcptIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rcptValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rcptValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rcptValidationFailureMessages():Array
    {
        if (model_internal::_rcptValidationFailureMessages == null)
            model_internal::calculateRcptIsValid();

        return _rcptValidationFailureMessages;
    }

    model_internal function set rcptValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rcptValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_rcptValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rcptValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get agent_idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get agent_idValidator() : StyleValidator
    {
        return model_internal::_agent_idValidator;
    }

    model_internal function set _agent_idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_agent_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_agent_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agent_idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get agent_idIsValid():Boolean
    {
        if (!model_internal::_agent_idIsValidCacheInitialized)
        {
            model_internal::calculateAgent_idIsValid();
        }

        return model_internal::_agent_idIsValid;
    }

    model_internal function calculateAgent_idIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_agent_idValidator.validate(model_internal::_instance.agent_id)
        model_internal::_agent_idIsValid_der = (valRes.results == null);
        model_internal::_agent_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::agent_idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::agent_idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get agent_idValidationFailureMessages():Array
    {
        if (model_internal::_agent_idValidationFailureMessages == null)
            model_internal::calculateAgent_idIsValid();

        return _agent_idValidationFailureMessages;
    }

    model_internal function set agent_idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_agent_idValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_agent_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agent_idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get textStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get textValidator() : StyleValidator
    {
        return model_internal::_textValidator;
    }

    model_internal function set _textIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_textIsValid;         
        if (oldValue !== value)
        {
            model_internal::_textIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get textIsValid():Boolean
    {
        if (!model_internal::_textIsValidCacheInitialized)
        {
            model_internal::calculateTextIsValid();
        }

        return model_internal::_textIsValid;
    }

    model_internal function calculateTextIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_textValidator.validate(model_internal::_instance.text)
        model_internal::_textIsValid_der = (valRes.results == null);
        model_internal::_textIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::textValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::textValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get textValidationFailureMessages():Array
    {
        if (model_internal::_textValidationFailureMessages == null)
            model_internal::calculateTextIsValid();

        return _textValidationFailureMessages;
    }

    model_internal function set textValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_textValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_textValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get received_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get received_atValidator() : StyleValidator
    {
        return model_internal::_received_atValidator;
    }

    model_internal function set _received_atIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_received_atIsValid;         
        if (oldValue !== value)
        {
            model_internal::_received_atIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "received_atIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get received_atIsValid():Boolean
    {
        if (!model_internal::_received_atIsValidCacheInitialized)
        {
            model_internal::calculateReceived_atIsValid();
        }

        return model_internal::_received_atIsValid;
    }

    model_internal function calculateReceived_atIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_received_atValidator.validate(model_internal::_instance.received_at)
        model_internal::_received_atIsValid_der = (valRes.results == null);
        model_internal::_received_atIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::received_atValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::received_atValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get received_atValidationFailureMessages():Array
    {
        if (model_internal::_received_atValidationFailureMessages == null)
            model_internal::calculateReceived_atIsValid();

        return _received_atValidationFailureMessages;
    }

    model_internal function set received_atValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_received_atValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_received_atValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "received_atValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get updated_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get updated_atValidator() : StyleValidator
    {
        return model_internal::_updated_atValidator;
    }

    model_internal function set _updated_atIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_updated_atIsValid;         
        if (oldValue !== value)
        {
            model_internal::_updated_atIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_atIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get updated_atIsValid():Boolean
    {
        if (!model_internal::_updated_atIsValidCacheInitialized)
        {
            model_internal::calculateUpdated_atIsValid();
        }

        return model_internal::_updated_atIsValid;
    }

    model_internal function calculateUpdated_atIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_updated_atValidator.validate(model_internal::_instance.updated_at)
        model_internal::_updated_atIsValid_der = (valRes.results == null);
        model_internal::_updated_atIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::updated_atValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::updated_atValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get updated_atValidationFailureMessages():Array
    {
        if (model_internal::_updated_atValidationFailureMessages == null)
            model_internal::calculateUpdated_atIsValid();

        return _updated_atValidationFailureMessages;
    }

    model_internal function set updated_atValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_updated_atValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_updated_atValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_atValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get directionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get directionValidator() : StyleValidator
    {
        return model_internal::_directionValidator;
    }

    model_internal function set _directionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_directionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_directionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "directionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get directionIsValid():Boolean
    {
        if (!model_internal::_directionIsValidCacheInitialized)
        {
            model_internal::calculateDirectionIsValid();
        }

        return model_internal::_directionIsValid;
    }

    model_internal function calculateDirectionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_directionValidator.validate(model_internal::_instance.direction)
        model_internal::_directionIsValid_der = (valRes.results == null);
        model_internal::_directionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::directionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::directionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get directionValidationFailureMessages():Array
    {
        if (model_internal::_directionValidationFailureMessages == null)
            model_internal::calculateDirectionIsValid();

        return _directionValidationFailureMessages;
    }

    model_internal function set directionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_directionValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_directionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "directionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get created_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get created_atValidator() : StyleValidator
    {
        return model_internal::_created_atValidator;
    }

    model_internal function set _created_atIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_created_atIsValid;         
        if (oldValue !== value)
        {
            model_internal::_created_atIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_atIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get created_atIsValid():Boolean
    {
        if (!model_internal::_created_atIsValidCacheInitialized)
        {
            model_internal::calculateCreated_atIsValid();
        }

        return model_internal::_created_atIsValid;
    }

    model_internal function calculateCreated_atIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_created_atValidator.validate(model_internal::_instance.created_at)
        model_internal::_created_atIsValid_der = (valRes.results == null);
        model_internal::_created_atIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::created_atValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::created_atValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get created_atValidationFailureMessages():Array
    {
        if (model_internal::_created_atValidationFailureMessages == null)
            model_internal::calculateCreated_atIsValid();

        return _created_atValidationFailureMessages;
    }

    model_internal function set created_atValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_created_atValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_created_atValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_atValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get sent_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sent_atValidator() : StyleValidator
    {
        return model_internal::_sent_atValidator;
    }

    model_internal function set _sent_atIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sent_atIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sent_atIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sent_atIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sent_atIsValid():Boolean
    {
        if (!model_internal::_sent_atIsValidCacheInitialized)
        {
            model_internal::calculateSent_atIsValid();
        }

        return model_internal::_sent_atIsValid;
    }

    model_internal function calculateSent_atIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sent_atValidator.validate(model_internal::_instance.sent_at)
        model_internal::_sent_atIsValid_der = (valRes.results == null);
        model_internal::_sent_atIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sent_atValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sent_atValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sent_atValidationFailureMessages():Array
    {
        if (model_internal::_sent_atValidationFailureMessages == null)
            model_internal::calculateSent_atIsValid();

        return _sent_atValidationFailureMessages;
    }

    model_internal function set sent_atValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sent_atValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_sent_atValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sent_atValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get rrStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get oob_eventStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get oob_eventValidator() : StyleValidator
    {
        return model_internal::_oob_eventValidator;
    }

    model_internal function set _oob_eventIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_oob_eventIsValid;         
        if (oldValue !== value)
        {
            model_internal::_oob_eventIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oob_eventIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get oob_eventIsValid():Boolean
    {
        if (!model_internal::_oob_eventIsValidCacheInitialized)
        {
            model_internal::calculateOob_eventIsValid();
        }

        return model_internal::_oob_eventIsValid;
    }

    model_internal function calculateOob_eventIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_oob_eventValidator.validate(model_internal::_instance.oob_event)
        model_internal::_oob_eventIsValid_der = (valRes.results == null);
        model_internal::_oob_eventIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::oob_eventValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::oob_eventValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get oob_eventValidationFailureMessages():Array
    {
        if (model_internal::_oob_eventValidationFailureMessages == null)
            model_internal::calculateOob_eventIsValid();

        return _oob_eventValidationFailureMessages;
    }

    model_internal function set oob_eventValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_oob_eventValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_oob_eventValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oob_eventValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get sender_nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sender_nameValidator() : StyleValidator
    {
        return model_internal::_sender_nameValidator;
    }

    model_internal function set _sender_nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sender_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sender_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sender_nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sender_nameIsValid():Boolean
    {
        if (!model_internal::_sender_nameIsValidCacheInitialized)
        {
            model_internal::calculateSender_nameIsValid();
        }

        return model_internal::_sender_nameIsValid;
    }

    model_internal function calculateSender_nameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sender_nameValidator.validate(model_internal::_instance.sender_name)
        model_internal::_sender_nameIsValid_der = (valRes.results == null);
        model_internal::_sender_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sender_nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sender_nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sender_nameValidationFailureMessages():Array
    {
        if (model_internal::_sender_nameValidationFailureMessages == null)
            model_internal::calculateSender_nameIsValid();

        return _sender_nameValidationFailureMessages;
    }

    model_internal function set sender_nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sender_nameValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_sender_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sender_nameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get rcpt_nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rcpt_nameValidator() : StyleValidator
    {
        return model_internal::_rcpt_nameValidator;
    }

    model_internal function set _rcpt_nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rcpt_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rcpt_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rcpt_nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rcpt_nameIsValid():Boolean
    {
        if (!model_internal::_rcpt_nameIsValidCacheInitialized)
        {
            model_internal::calculateRcpt_nameIsValid();
        }

        return model_internal::_rcpt_nameIsValid;
    }

    model_internal function calculateRcpt_nameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rcpt_nameValidator.validate(model_internal::_instance.rcpt_name)
        model_internal::_rcpt_nameIsValid_der = (valRes.results == null);
        model_internal::_rcpt_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rcpt_nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rcpt_nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rcpt_nameValidationFailureMessages():Array
    {
        if (model_internal::_rcpt_nameValidationFailureMessages == null)
            model_internal::calculateRcpt_nameIsValid();

        return _rcpt_nameValidationFailureMessages;
    }

    model_internal function set rcpt_nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rcpt_nameValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_rcpt_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rcpt_nameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("sender"):
            {
                return senderValidationFailureMessages;
            }
            case("command"):
            {
                return commandValidationFailureMessages;
            }
            case("rcpt"):
            {
                return rcptValidationFailureMessages;
            }
            case("agent_id"):
            {
                return agent_idValidationFailureMessages;
            }
            case("text"):
            {
                return textValidationFailureMessages;
            }
            case("received_at"):
            {
                return received_atValidationFailureMessages;
            }
            case("updated_at"):
            {
                return updated_atValidationFailureMessages;
            }
            case("direction"):
            {
                return directionValidationFailureMessages;
            }
            case("created_at"):
            {
                return created_atValidationFailureMessages;
            }
            case("sent_at"):
            {
                return sent_atValidationFailureMessages;
            }
            case("oob_event"):
            {
                return oob_eventValidationFailureMessages;
            }
            case("sender_name"):
            {
                return sender_nameValidationFailureMessages;
            }
            case("rcpt_name"):
            {
                return rcpt_nameValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
