package Controls.AnswerControls.DragAnswers
{
  import Model.Answers.Answer;
  import Model.Answers.MatchingAnswer;
  
  import interfaces.IDragAndDrop;
  
  import mx.controls.Label;
  import mx.controls.Text;

  public class DragMatchingControl extends DragAnswerControl
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\Draganswers\DragMatchingControl.as
    *
    *  Abstract:
    *     This is controls for drag MatchingControl
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
    public function DragMatchingControl(answer:Answer, parent:IDragAndDrop)
    {
      super(answer, parent);

      _control = new Label();

      (_control as Label).selectable = false;
      (_control as Label).setStyle("textAlign", "center");

      this.addChild(_control);
    }


    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
      super.FontName();

      if (!_isDefault)
        (_control as Label).setStyle("fontFamily", _fontName);
      else
        DefaultFont();
    }

    public override function FontSize():void
    {
      super.FontSize();
      (_control as Label).setStyle("fontSize", _fontSize);
    }

    public override function FontColor():void
    {
      super.FontColor();
      (_control as Label).setStyle("color", _fontColor);
    }

    public override function Init(answer:Answer):void
    {
      (_control as Label).text = (answer as MatchingAnswer).answer;
    }

    public override function GetText():String
    {
      return (_control as Label).text;
    }

    public override function DefaultFont():void
    {
      _control.setStyle("fontFamily", "EMComic");
      _control.setStyle("fontWeight", "normal");
    }


    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}