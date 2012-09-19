

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import Controls.Printing.FormPrintFooter;
import Number;
import mx.printing.PrintDataGrid;
import Controls.Printing.FormPrintHeader;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property footer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'footer' moved to '_1268861541footer'
	 */

    [Bindable(event="propertyChange")]
    public function get footer():Controls.Printing.FormPrintFooter
    {
        return this._1268861541footer;
    }

    public function set footer(value:Controls.Printing.FormPrintFooter):void
    {
    	var oldValue:Object = this._1268861541footer;
        if (oldValue !== value)
        {
            this._1268861541footer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "footer", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property header (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'header' moved to '_1221270899header'
	 */

    [Bindable(event="propertyChange")]
    public function get header():Controls.Printing.FormPrintHeader
    {
        return this._1221270899header;
    }

    public function set header(value:Controls.Printing.FormPrintHeader):void
    {
    	var oldValue:Object = this._1221270899header;
        if (oldValue !== value)
        {
            this._1221270899header = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "header", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property myDataGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myDataGrid' moved to '_2045440036myDataGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get myDataGrid():mx.printing.PrintDataGrid
    {
        return this._2045440036myDataGrid;
    }

    public function set myDataGrid(value:mx.printing.PrintDataGrid):void
    {
    	var oldValue:Object = this._2045440036myDataGrid;
        if (oldValue !== value)
        {
            this._2045440036myDataGrid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myDataGrid", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property pageNumber (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'pageNumber' moved to '_1144767160pageNumber'
	 */

    [Bindable(event="propertyChange")]
    public function get pageNumber():Number
    {
        return this._1144767160pageNumber;
    }

    public function set pageNumber(value:Number):void
    {
    	var oldValue:Object = this._1144767160pageNumber;
        if (oldValue !== value)
        {
            this._1144767160pageNumber = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pageNumber", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property prodTotal (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'prodTotal' moved to '_1081948627prodTotal'
	 */

    [Bindable(event="propertyChange")]
    public function get prodTotal():Number
    {
        return this._1081948627prodTotal;
    }

    public function set prodTotal(value:Number):void
    {
    	var oldValue:Object = this._1081948627prodTotal;
        if (oldValue !== value)
        {
            this._1081948627prodTotal = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "prodTotal", oldValue, value));
        }
    }



}
