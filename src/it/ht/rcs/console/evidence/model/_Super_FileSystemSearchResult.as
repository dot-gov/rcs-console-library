/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - FileSystemSearchResult.as.
 */

package it.ht.rcs.console.evidence.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.agent.model.FileSystemItem;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_FileSystemSearchResult extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.agent.model.FileSystemItem.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _FileSystemSearchResultEntityMetadata;
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
    private var _internal_limit : int;
    private var _internal_total : int;
    private var _internal_count : int;
    private var _internal_page : int;
    private var _internal_start : int;
    private var _internal_pages : int;
    private var _internal_entries : ArrayCollection;
    model_internal var _internal_entries_leaf:it.ht.rcs.console.agent.model.FileSystemItem;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_FileSystemSearchResult()
    {
        _model = new _FileSystemSearchResultEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "entries", model_internal::setterListenerEntries));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get limit() : int
    {
        return _internal_limit;
    }

    [Bindable(event="propertyChange")]
    public function get total() : int
    {
        return _internal_total;
    }

    [Bindable(event="propertyChange")]
    public function get count() : int
    {
        return _internal_count;
    }

    [Bindable(event="propertyChange")]
    public function get page() : int
    {
        return _internal_page;
    }

    [Bindable(event="propertyChange")]
    public function get start() : int
    {
        return _internal_start;
    }

    [Bindable(event="propertyChange")]
    public function get pages() : int
    {
        return _internal_pages;
    }

    [Bindable(event="propertyChange")]
    public function get entries() : ArrayCollection
    {
        return _internal_entries;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set limit(value:int) : void
    {
        var oldValue:int = _internal_limit;
        if (oldValue !== value)
        {
            _internal_limit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "limit", oldValue, _internal_limit));
        }
    }

    public function set total(value:int) : void
    {
        var oldValue:int = _internal_total;
        if (oldValue !== value)
        {
            _internal_total = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "total", oldValue, _internal_total));
        }
    }

    public function set count(value:int) : void
    {
        var oldValue:int = _internal_count;
        if (oldValue !== value)
        {
            _internal_count = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "count", oldValue, _internal_count));
        }
    }

    public function set page(value:int) : void
    {
        var oldValue:int = _internal_page;
        if (oldValue !== value)
        {
            _internal_page = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "page", oldValue, _internal_page));
        }
    }

    public function set start(value:int) : void
    {
        var oldValue:int = _internal_start;
        if (oldValue !== value)
        {
            _internal_start = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "start", oldValue, _internal_start));
        }
    }

    public function set pages(value:int) : void
    {
        var oldValue:int = _internal_pages;
        if (oldValue !== value)
        {
            _internal_pages = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pages", oldValue, _internal_pages));
        }
    }

    public function set entries(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_entries;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_entries = value;
            }
            else if (value is Array)
            {
                _internal_entries = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_entries = null;
            }
            else
            {
                throw new Error("value of entries must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "entries", oldValue, _internal_entries));
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

    model_internal function setterListenerEntries(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerEntries);
            }
        }
        _model.invalidateDependentOnEntries();
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
        if (!_model.entriesIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_entriesValidationFailureMessages);
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
    public function get _model() : _FileSystemSearchResultEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FileSystemSearchResultEntityMetadata) : void
    {
        var oldValue : _FileSystemSearchResultEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfEntries : Array = null;
    model_internal var _doValidationLastValOfEntries : ArrayCollection;

    model_internal function _doValidationForEntries(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfEntries != null && model_internal::_doValidationLastValOfEntries == value)
           return model_internal::_doValidationCacheOfEntries ;

        _model.model_internal::_entriesIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEntriesAvailable && _internal_entries == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "entries is required"));
        }

        model_internal::_doValidationCacheOfEntries = validationFailures;
        model_internal::_doValidationLastValOfEntries = value;

        return validationFailures;
    }
    

}

}
