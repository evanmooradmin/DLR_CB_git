

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import String;
import mx.containers.Accordion;
import mx.controls.Button;
import mx.effects.Resize;
import mx.controls.MenuBar;
import Controls.QuizControl;
import mx.controls.DataGrid;
import mx.controls.dataGridClasses.DataGridColumn;
import Class;
import mx.containers.Box;
import mx.controls.ComboBox;
import mx.effects.Sequence;
import mx.collections.ArrayCollection;
import mx.containers.VBox;
import mx.controls.Text;
import mx.containers.Canvas;

class BindableProperty
{
	/**
	 * generated bindable wrapper for property AboutMainText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'AboutMainText' moved to '_396618477AboutMainText'
	 */

    [Bindable(event="propertyChange")]
    public function get AboutMainText():mx.controls.Text
    {
        return this._396618477AboutMainText;
    }

    public function set AboutMainText(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._396618477AboutMainText;
        if (oldValue !== value)
        {
            this._396618477AboutMainText = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "AboutMainText", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property MainMenuBar (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'MainMenuBar' moved to '_1733166619MainMenuBar'
	 */

    [Bindable(event="propertyChange")]
    public function get MainMenuBar():mx.controls.MenuBar
    {
        return this._1733166619MainMenuBar;
    }

    public function set MainMenuBar(value:mx.controls.MenuBar):void
    {
    	var oldValue:Object = this._1733166619MainMenuBar;
        if (oldValue !== value)
        {
            this._1733166619MainMenuBar = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "MainMenuBar", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property accordion (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'accordion' moved to '_1830107832accordion'
	 */

    [Bindable(event="propertyChange")]
    public function get accordion():mx.containers.Accordion
    {
        return this._1830107832accordion;
    }

    public function set accordion(value:mx.containers.Accordion):void
    {
    	var oldValue:Object = this._1830107832accordion;
        if (oldValue !== value)
        {
            this._1830107832accordion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "accordion", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property boxAbout (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'boxAbout' moved to '_2071028606boxAbout'
	 */

    [Bindable(event="propertyChange")]
    public function get boxAbout():mx.containers.VBox
    {
        return this._2071028606boxAbout;
    }

    public function set boxAbout(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._2071028606boxAbout;
        if (oldValue !== value)
        {
            this._2071028606boxAbout = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boxAbout", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property boxBeginLesson (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'boxBeginLesson' moved to '_969712522boxBeginLesson'
	 */

    [Bindable(event="propertyChange")]
    public function get boxBeginLesson():mx.containers.VBox
    {
        return this._969712522boxBeginLesson;
    }

    public function set boxBeginLesson(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._969712522boxBeginLesson;
        if (oldValue !== value)
        {
            this._969712522boxBeginLesson = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boxBeginLesson", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property boxFullScreenHolder (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'boxFullScreenHolder' moved to '_13262162boxFullScreenHolder'
	 */

    [Bindable(event="propertyChange")]
    public function get boxFullScreenHolder():mx.containers.Box
    {
        return this._13262162boxFullScreenHolder;
    }

    public function set boxFullScreenHolder(value:mx.containers.Box):void
    {
    	var oldValue:Object = this._13262162boxFullScreenHolder;
        if (oldValue !== value)
        {
            this._13262162boxFullScreenHolder = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boxFullScreenHolder", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property boxLessonHistory (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'boxLessonHistory' moved to '_780973105boxLessonHistory'
	 */

    [Bindable(event="propertyChange")]
    public function get boxLessonHistory():mx.containers.VBox
    {
        return this._780973105boxLessonHistory;
    }

    public function set boxLessonHistory(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._780973105boxLessonHistory;
        if (oldValue !== value)
        {
            this._780973105boxLessonHistory = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boxLessonHistory", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property btnBegin (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnBegin' moved to '_2081203117btnBegin'
	 */

    [Bindable(event="propertyChange")]
    public function get btnBegin():mx.controls.Button
    {
        return this._2081203117btnBegin;
    }

    public function set btnBegin(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._2081203117btnBegin;
        if (oldValue !== value)
        {
            this._2081203117btnBegin = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnBegin", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property btnClearHistory (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnClearHistory' moved to '_2053811715btnClearHistory'
	 */

    [Bindable(event="propertyChange")]
    public function get btnClearHistory():mx.controls.Button
    {
        return this._2053811715btnClearHistory;
    }

    public function set btnClearHistory(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._2053811715btnClearHistory;
        if (oldValue !== value)
        {
            this._2053811715btnClearHistory = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnClearHistory", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property btnPrint (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnPrint' moved to '_2094521777btnPrint'
	 */

    [Bindable(event="propertyChange")]
    public function get btnPrint():mx.controls.Button
    {
        return this._2094521777btnPrint;
    }

    public function set btnPrint(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._2094521777btnPrint;
        if (oldValue !== value)
        {
            this._2094521777btnPrint = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnPrint", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property btnQuit (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btnQuit' moved to '_206145227btnQuit'
	 */

    [Bindable(event="propertyChange")]
    public function get btnQuit():mx.controls.Button
    {
        return this._206145227btnQuit;
    }

    public function set btnQuit(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._206145227btnQuit;
        if (oldValue !== value)
        {
            this._206145227btnQuit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btnQuit", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property centerAndResizeApplication (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'centerAndResizeApplication' moved to '_1233442086centerAndResizeApplication'
	 */

    [Bindable(event="propertyChange")]
    public function get centerAndResizeApplication():mx.effects.Sequence
    {
        return this._1233442086centerAndResizeApplication;
    }

    public function set centerAndResizeApplication(value:mx.effects.Sequence):void
    {
    	var oldValue:Object = this._1233442086centerAndResizeApplication;
        if (oldValue !== value)
        {
            this._1233442086centerAndResizeApplication = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "centerAndResizeApplication", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property comboBoxDay (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'comboBoxDay' moved to '_865668865comboBoxDay'
	 */

    [Bindable(event="propertyChange")]
    public function get comboBoxDay():mx.controls.ComboBox
    {
        return this._865668865comboBoxDay;
    }

    public function set comboBoxDay(value:mx.controls.ComboBox):void
    {
    	var oldValue:Object = this._865668865comboBoxDay;
        if (oldValue !== value)
        {
            this._865668865comboBoxDay = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "comboBoxDay", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property comboBoxWeek (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'comboBoxWeek' moved to '_1065361679comboBoxWeek'
	 */

    [Bindable(event="propertyChange")]
    public function get comboBoxWeek():mx.controls.ComboBox
    {
        return this._1065361679comboBoxWeek;
    }

    public function set comboBoxWeek(value:mx.controls.ComboBox):void
    {
    	var oldValue:Object = this._1065361679comboBoxWeek;
        if (oldValue !== value)
        {
            this._1065361679comboBoxWeek = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "comboBoxWeek", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property dgLessonHistory (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dgLessonHistory' moved to '_124923783dgLessonHistory'
	 */

    [Bindable(event="propertyChange")]
    public function get dgLessonHistory():mx.controls.DataGrid
    {
        return this._124923783dgLessonHistory;
    }

    public function set dgLessonHistory(value:mx.controls.DataGrid):void
    {
    	var oldValue:Object = this._124923783dgLessonHistory;
        if (oldValue !== value)
        {
            this._124923783dgLessonHistory = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dgLessonHistory", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property lnkBtnBegin (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lnkBtnBegin' moved to '_1082880502lnkBtnBegin'
	 */

    [Bindable(event="propertyChange")]
    public function get lnkBtnBegin():mx.controls.dataGridClasses.DataGridColumn
    {
        return this._1082880502lnkBtnBegin;
    }

    public function set lnkBtnBegin(value:mx.controls.dataGridClasses.DataGridColumn):void
    {
    	var oldValue:Object = this._1082880502lnkBtnBegin;
        if (oldValue !== value)
        {
            this._1082880502lnkBtnBegin = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lnkBtnBegin", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property mainCanvasHolder (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'mainCanvasHolder' moved to '_1783801475mainCanvasHolder'
	 */

    [Bindable(event="propertyChange")]
    public function get mainCanvasHolder():mx.containers.Canvas
    {
        return this._1783801475mainCanvasHolder;
    }

    public function set mainCanvasHolder(value:mx.containers.Canvas):void
    {
    	var oldValue:Object = this._1783801475mainCanvasHolder;
        if (oldValue !== value)
        {
            this._1783801475mainCanvasHolder = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mainCanvasHolder", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property quizControl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'quizControl' moved to '_1272217928quizControl'
	 */

    [Bindable(event="propertyChange")]
    public function get quizControl():Controls.QuizControl
    {
        return this._1272217928quizControl;
    }

    public function set quizControl(value:Controls.QuizControl):void
    {
    	var oldValue:Object = this._1272217928quizControl;
        if (oldValue !== value)
        {
            this._1272217928quizControl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "quizControl", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property resizeApplication (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'resizeApplication' moved to '_1599002620resizeApplication'
	 */

    [Bindable(event="propertyChange")]
    public function get resizeApplication():mx.effects.Resize
    {
        return this._1599002620resizeApplication;
    }

    public function set resizeApplication(value:mx.effects.Resize):void
    {
    	var oldValue:Object = this._1599002620resizeApplication;
        if (oldValue !== value)
        {
            this._1599002620resizeApplication = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resizeApplication", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property aboutMainText (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'aboutMainText' moved to '_1195580109aboutMainText'
	 */

    [Bindable(event="propertyChange")]
    private function get aboutMainText():String
    {
        return this._1195580109aboutMainText;
    }

    private function set aboutMainText(value:String):void
    {
    	var oldValue:Object = this._1195580109aboutMainText;
        if (oldValue !== value)
        {
            this._1195580109aboutMainText = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aboutMainText", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property iconBeginLesson (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'iconBeginLesson' moved to '_908018952iconBeginLesson'
	 */

    [Bindable(event="propertyChange")]
    private function get iconBeginLesson():Class
    {
        return this._908018952iconBeginLesson;
    }

    private function set iconBeginLesson(value:Class):void
    {
    	var oldValue:Object = this._908018952iconBeginLesson;
        if (oldValue !== value)
        {
            this._908018952iconBeginLesson = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "iconBeginLesson", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property iconLessonHistory (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'iconLessonHistory' moved to '_1394655299iconLessonHistory'
	 */

    [Bindable(event="propertyChange")]
    private function get iconLessonHistory():Class
    {
        return this._1394655299iconLessonHistory;
    }

    private function set iconLessonHistory(value:Class):void
    {
    	var oldValue:Object = this._1394655299iconLessonHistory;
        if (oldValue !== value)
        {
            this._1394655299iconLessonHistory = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "iconLessonHistory", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property iconAbout (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'iconAbout' moved to '_1418667372iconAbout'
	 */

    [Bindable(event="propertyChange")]
    private function get iconAbout():Class
    {
        return this._1418667372iconAbout;
    }

    private function set iconAbout(value:Class):void
    {
    	var oldValue:Object = this._1418667372iconAbout;
        if (oldValue !== value)
        {
            this._1418667372iconAbout = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "iconAbout", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property _numberBkg (private)
	 * - generated setter
	 * - generated getter
	 * - original private var '_numberBkg' moved to '_160986038_numberBkg'
	 */

    [Bindable(event="propertyChange")]
    private function get _numberBkg():String
    {
        return this._160986038_numberBkg;
    }

    private function set _numberBkg(value:String):void
    {
    	var oldValue:Object = this._160986038_numberBkg;
        if (oldValue !== value)
        {
            this._160986038_numberBkg = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_numberBkg", oldValue, value));
        }
    }

	/**
	 * generated bindable wrapper for property lessonHistoryDataProvider (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'lessonHistoryDataProvider' moved to '_1077799447lessonHistoryDataProvider'
	 */

    [Bindable(event="propertyChange")]
    private function get lessonHistoryDataProvider():ArrayCollection
    {
        return this._1077799447lessonHistoryDataProvider;
    }

    private function set lessonHistoryDataProvider(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1077799447lessonHistoryDataProvider;
        if (oldValue !== value)
        {
            this._1077799447lessonHistoryDataProvider = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lessonHistoryDataProvider", oldValue, value));
        }
    }



}
