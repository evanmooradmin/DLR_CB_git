

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import String;
import generated.GetFile_request;
import generated.UpdateCheck_request;
import generated.UpdateXMLInformation_request;
import generated.GetMD5HashFromRemoteFile_request;
import generated.UploadXML_request;
import generated.ResetDownload_request;
import flash.utils.ByteArray;
import Object;
import generated.ArrayOfString;
import generated.CreateEmcDir_request;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property uploadXML_lastResult (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'uploadXML_lastResult' moved to '_1392039972uploadXML_lastResult'
	 */

    [Bindable(event="propertyChange")]
    public function set uploadXML_lastResult(value:Object):void
    {
    	var oldValue:Object = this.uploadXML_lastResult;
        if (oldValue !== value)
        {
            this._1392039972uploadXML_lastResult = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uploadXML_lastResult", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property createEmcDir_request_var (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'createEmcDir_request_var' moved to '_669296474createEmcDir_request_var'
	 */

    [Bindable(event="propertyChange")]
    public function set createEmcDir_request_var(value:CreateEmcDir_request):void
    {
    	var oldValue:Object = this.createEmcDir_request_var;
        if (oldValue !== value)
        {
            this._669296474createEmcDir_request_var = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "createEmcDir_request_var", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property updateCheck_request_var (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'updateCheck_request_var' moved to '_1907322121updateCheck_request_var'
	 */

    [Bindable(event="propertyChange")]
    public function set updateCheck_request_var(value:UpdateCheck_request):void
    {
    	var oldValue:Object = this.updateCheck_request_var;
        if (oldValue !== value)
        {
            this._1907322121updateCheck_request_var = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updateCheck_request_var", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property updateXMLInformation_lastResult (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'updateXMLInformation_lastResult' moved to '_1864281228updateXMLInformation_lastResult'
	 */

    [Bindable(event="propertyChange")]
    public function set updateXMLInformation_lastResult(value:Object):void
    {
    	var oldValue:Object = this.updateXMLInformation_lastResult;
        if (oldValue !== value)
        {
            this._1864281228updateXMLInformation_lastResult = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updateXMLInformation_lastResult", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property getFile_lastResult (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'getFile_lastResult' moved to '_1340626240getFile_lastResult'
	 */

    [Bindable(event="propertyChange")]
    public function set getFile_lastResult(value:flash.utils.ByteArray):void
    {
    	var oldValue:Object = this.getFile_lastResult;
        if (oldValue !== value)
        {
            this._1340626240getFile_lastResult = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "getFile_lastResult", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property updateCheck_lastResult (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'updateCheck_lastResult' moved to '_413189331updateCheck_lastResult'
	 */

    [Bindable(event="propertyChange")]
    public function set updateCheck_lastResult(value:ArrayOfString):void
    {
    	var oldValue:Object = this.updateCheck_lastResult;
        if (oldValue !== value)
        {
            this._413189331updateCheck_lastResult = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updateCheck_lastResult", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property updateXMLInformation_request_var (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'updateXMLInformation_request_var' moved to '_505534582updateXMLInformation_request_var'
	 */

    [Bindable(event="propertyChange")]
    public function set updateXMLInformation_request_var(value:UpdateXMLInformation_request):void
    {
    	var oldValue:Object = this.updateXMLInformation_request_var;
        if (oldValue !== value)
        {
            this._505534582updateXMLInformation_request_var = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updateXMLInformation_request_var", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property createEmcDir_lastResult (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'createEmcDir_lastResult' moved to '_1902179004createEmcDir_lastResult'
	 */

    [Bindable(event="propertyChange")]
    public function set createEmcDir_lastResult(value:Object):void
    {
    	var oldValue:Object = this.createEmcDir_lastResult;
        if (oldValue !== value)
        {
            this._1902179004createEmcDir_lastResult = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "createEmcDir_lastResult", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property uploadXML_request_var (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'uploadXML_request_var' moved to '_2034855666uploadXML_request_var'
	 */

    [Bindable(event="propertyChange")]
    public function set uploadXML_request_var(value:UploadXML_request):void
    {
    	var oldValue:Object = this.uploadXML_request_var;
        if (oldValue !== value)
        {
            this._2034855666uploadXML_request_var = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uploadXML_request_var", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property getFile_request_var (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'getFile_request_var' moved to '_441029974getFile_request_var'
	 */

    [Bindable(event="propertyChange")]
    public function set getFile_request_var(value:GetFile_request):void
    {
    	var oldValue:Object = this.getFile_request_var;
        if (oldValue !== value)
        {
            this._441029974getFile_request_var = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "getFile_request_var", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property resetDownload_lastResult (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'resetDownload_lastResult' moved to '_216307867resetDownload_lastResult'
	 */

    [Bindable(event="propertyChange")]
    public function set resetDownload_lastResult(value:String):void
    {
    	var oldValue:Object = this.resetDownload_lastResult;
        if (oldValue !== value)
        {
            this._216307867resetDownload_lastResult = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resetDownload_lastResult", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property getMD5HashFromRemoteFile_request_var (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'getMD5HashFromRemoteFile_request_var' moved to '_1134822374getMD5HashFromRemoteFile_request_var'
	 */

    [Bindable(event="propertyChange")]
    public function set getMD5HashFromRemoteFile_request_var(value:GetMD5HashFromRemoteFile_request):void
    {
    	var oldValue:Object = this.getMD5HashFromRemoteFile_request_var;
        if (oldValue !== value)
        {
            this._1134822374getMD5HashFromRemoteFile_request_var = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "getMD5HashFromRemoteFile_request_var", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property resetDownload_request_var (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'resetDownload_request_var' moved to '_579287087resetDownload_request_var'
	 */

    [Bindable(event="propertyChange")]
    public function set resetDownload_request_var(value:ResetDownload_request):void
    {
    	var oldValue:Object = this.resetDownload_request_var;
        if (oldValue !== value)
        {
            this._579287087resetDownload_request_var = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resetDownload_request_var", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property getMD5HashFromRemoteFile_lastResult (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'getMD5HashFromRemoteFile_lastResult' moved to '_1363006640getMD5HashFromRemoteFile_lastResult'
	 */

    [Bindable(event="propertyChange")]
    public function set getMD5HashFromRemoteFile_lastResult(value:String):void
    {
    	var oldValue:Object = this.getMD5HashFromRemoteFile_lastResult;
        if (oldValue !== value)
        {
            this._1363006640getMD5HashFromRemoteFile_lastResult = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "getMD5HashFromRemoteFile_lastResult", oldValue, value));
        }
    }



}
