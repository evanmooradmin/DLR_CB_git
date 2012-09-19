package Controls.AnswerControls.Containers
{
  import Controls.AnswerControls.DragAnswers.DragAnswerControl;
  import Controls.AnswerControls.DragAnswers.DragMatchingControl;
  
  import Model.Answers.Answer;
  import Model.Prompts.Matching;
  
  import interfaces.IDragAndDrop;
  
  import mx.containers.VBox;
  import mx.core.ScrollPolicy;

  public class MatchingContainer extends ContainersAnswers
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\Containers\MatchingContainersAnswer.as
    *
    *  Abstract:
    *     This is control for ganerage container for matching controls
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
    private var _currentSize:int = 0;

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
    public function MatchingContainer(prompt:Matching) 
    { 
      var vBox:VBox = new VBox();
      //vBox.percentWidth = 100;
      super(prompt, vBox);
      this.percentWidth = NaN;
       
      //Перемешиваем ответы в порядке их нумерации для того что бпотом использовать Shaffle
      prompt.SortByNumAttribute();
      //Перемешиваем ответа
      Shaffle();

      _container.setStyle("horizontalAlign", "center");
      // styles
      this.setStyle("borderStyle", "solid");
      this.setStyle("borderThickness", 2);
      this.setStyle("cornerRadius", 3);
      this.setStyle("borderColor", 0x88C4DE);
      
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;
      //_container.setStyle("borderStyle", "solid");
    }



    /**
    * Virtuals methods
    */
    protected override function MakeDragAnswer(answer:Answer, parent:IDragAndDrop):DragAnswerControl
    {
      return new DragMatchingControl(answer, parent);
    }
    
    protected override function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
    {
      super.updateDisplayList(unscaledWidth, unscaledHeight);
      
//      var maxWidth:int = 0;
//      // в hBox растягиваем все элементы по ширине максимального
//      for each (var item:UIComponent in this.getChildren())
//        if (maxWidth < item.width)
//            maxWidth = item.width;
//      if (maxWidth >= this.width)
//      {
//         this.width = maxWidth + this.width/20;
//         maxWidth = this.width;
//      }  
    }
    
//    public override function FontSize(size:int):void
//    {
//      var resizeFont:AnimateProperty = new AnimateProperty(this);
//      resizeFont.isStyle = true;
//      resizeFont.property = "fontSize";
//      resizeFont.fromValue = _fontSize;
//      resizeFont.toValue = size;
//      resizeFont.play();
//      
//      _fontSize = size;
//      
//      
//    }

    /**
    * Public members/properties
    */


    /**
    * Public methods
    */

  }
}