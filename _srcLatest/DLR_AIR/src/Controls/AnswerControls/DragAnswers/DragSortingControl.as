package Controls.AnswerControls.DragAnswers
{
  import Model.Answers.Answer;
  import Model.Answers.SortingAnswer;

  import interfaces.IDragAndDrop;

  import mx.controls.Text;

  public class DragSortingControl extends DragAnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\DragAnswers\DragSortingControl.as
    *
    *  Abstract:
    *     This is drag controls for SortingControl.as
    *
    *  Author:
    *     Evgenij Welikij   01-March-2010
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
    public function DragSortingControl(answer:Answer, parent:IDragAndDrop)
    {
      super(answer, parent);

      _control = new Text();

      (_control as Text).selectable = false;
      (_control as Text).setStyle("textAlign", "center");

      this.addChild(_control);
    }

    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
      super.FontName();

      if (!_isDefault)
        (_control as Text).setStyle("fontFamily", _fontName);
      else
        DefaultFont();
    }

    public override function FontSize():void
    {
      super.FontSize();
      (_control as Text).setStyle("fontSize", _fontSize);
    }

    public override function FontColor():void
    {
      super.FontColor();
      (_control as Text).setStyle("color", _fontColor);
    }

    public override function Init(answer:Answer):void
    {
      (_control as Text).htmlText = (answer as SortingAnswer).text;
    }

    public override function DefaultFont():void
    {
      _control.setStyle("fontFamily", "Futura");
    }

    protected override function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
    {
      super.updateDisplayList(unscaledWidth, unscaledHeight);

      var width:int = _control.measureText((_control as Text).text).width;

      _control.width = width + 15;

    }


    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}