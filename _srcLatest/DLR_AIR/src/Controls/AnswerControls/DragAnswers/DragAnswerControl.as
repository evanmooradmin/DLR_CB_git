package Controls.AnswerControls.DragAnswers
{
  import Controls.AnswerControls.AnswerControl;

  import Model.Answers.Answer;

  import flash.filters.DropShadowFilter;

  import interfaces.IDragAndDrop;

  import mx.controls.Text;

  public class DragAnswerControl extends AnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\DragAnswers\DragAnswerControl.as
    *
    *  Abstract:
    *     This is dragAnswer control
    *
    *  Author:
    *     Evgenij Welikij   26-October-2009
    *
    *  Revision History:
    *
    ***************************************************************/


    /**
    * Static
    */


    /**
    * Private members/properties
    */
    protected var _shadowFilter:DropShadowFilter = new DropShadowFilter(6, 90, 0, .35, 6, 6);

    private var _mainParentObject:IDragAndDrop;
    private var _currentParentObject:IDragAndDrop;
    private var _isDroped:Boolean;


    /**
    * Private methods
    */


    /**
    * Events handler
    */


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function DragAnswerControl(answer:Answer, parent:IDragAndDrop)
    {
      super(answer);

      this._mainParentObject = parent;
   }


    /**
    * Virtuals methods
    */
    public override function GetText():String
    {
      return (_control as Text).text;
    }


    /**
    * Public members/properties
    */
    public function get mainParentObject():IDragAndDrop
    {
      return _mainParentObject;
    }

    public function get currentParentObject():IDragAndDrop
    {
      return _currentParentObject;
    }
    public function set currentParentObject(value:IDragAndDrop):void
    {
      this._currentParentObject = value;
    }

    public function get isDroped():Boolean
    {
      return _isDroped;
    }
    public function set isDroped(value:Boolean):void
    {
      _isDroped = value;
    }

    public function set shadowFilter(value:Boolean):void
    {
      if (value)
        filters = [_shadowFilter];
      else
        filters = [];
    }
    public function get shadowFilter():Boolean
    {
      return filters.indexOf(_shadowFilter) != -1 ? true : false;
    }


    /**
    * Public methods
    */



  }
}