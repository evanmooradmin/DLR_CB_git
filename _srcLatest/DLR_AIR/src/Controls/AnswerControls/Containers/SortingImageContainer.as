package Controls.AnswerControls.Containers
{
  import Controls.AnswerControls.DragAnswers.DragAnswerControl;
  import Controls.AnswerControls.DragAnswers.DragSortingImageControl;
  
  import Model.Answers.Answer;
  import Model.Answers.SortingImage;
  import Model.Prompts.Prompt;
  import Model.Prompts.SortingGraphics;
  
  import interfaces.IDragAndDrop;
  import interfaces.IFontStyle;
  
  import mx.controls.Image;
  import mx.core.UIComponent;

  public class SortingImageContainer extends ContainersAnswers
  {
    /***************************************************************
    *
    *  Module Name:
    *
    *
    *  Abstract:
    *
    *
    *  Author:
    *     Evgenij Welikij
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
    public function SortingImageContainer(prompt:SortingGraphics, container:UIComponent)
    {

      super(prompt, container);

      //Shaffle();

      this.setStyle("borderStyle", "none");
    }


    /**
    * Virtuals methods
    */
    protected override function MakeDragAnswer(answer:Answer, parent:IDragAndDrop):DragAnswerControl
    {
      return new DragSortingImageControl(answer as SortingImage, parent);
    }

    public override function FontName():void
    {
     // super.FontName(name);

      if (_container is IFontStyle)
        IFontStyle(_container).fontName = _fontName;
    }

    public override function FontSize():void
    {
     // super.FontSize(size);

      if (_container is IFontStyle)
        IFontStyle(_container).fontSize  = _fontSize;
    }

    public override function FontColor():void
    {
     // super.FontColor(color);

      if (_container is IFontStyle)
        IFontStyle(_container).fontColor = _fontColor;
    }

    public override function Init(prompt:Prompt):void
    {
      super.Init(prompt);
    }


    /**
    * Public members/properties
    */
    public function set imageWidth(value:int):void
    {
      for each (var item:DragSortingImageControl in _dragAnswerControls)
        item.imageWidth = value;
    }
    public function get imageWidth():int
    {
      var maxWidth:int = 0;

      for each (var item:DragSortingImageControl in _dragAnswerControls)
        if (item.imageWidth > maxWidth)
          maxWidth = item.imageWidth;

      return maxWidth;
    }

    public function set imageHeight(value:int):void
    {
      for each (var item:DragSortingImageControl in _dragAnswerControls)
        item.imageHeight = value;
    }
    public function get imageHeight():int
    {
      var maxHeight:int = 0;

      for each (var item:DragSortingImageControl in _dragAnswerControls)
        if (maxHeight < item.imageHeight)
          maxHeight = item.imageHeight;

      return maxHeight;
    }
    

    /**
    * Public methods
    */
    
  }
}