package Controls.AnswerControls.Containers
{
  import Controls.AnswerControls.DragAnswers.DragAnswerControl;
  import Controls.AnswerControls.DragAnswers.DragSortingControl;
  
  import Model.Answers.Answer;
  import Model.Prompts.Sorting;
  
  import interfaces.IDragAndDrop;
  
  import mx.containers.VBox;

  public class SortingContainer extends ContainersAnswers
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\Containers\SortingContainer.as
    *
    *  Abstract:
    *     This is control for ganerage container for sorting controls
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
    public function SortingContainer(prompt:Sorting)
    {
      super(prompt, new VBox());
      this.percentWidth = NaN;

      //Shaffle();

      // styles
      this.setStyle("borderStyle", "solid");
      this.setStyle("borderThickness", 2);
      this.setStyle("cornerRadius", 3);
      this.setStyle("borderColor", 0x88C4DE);
      this.setStyle('verticalAlign','middle');
      this.verticalScrollPolicy = 'false';
      this.horizontalScrollPolicy = 'false';
      //this.percentHeight = 100;

      _container.setStyle('verticalAlign','middle');
      _container.setStyle('horizontalAlign','center');
      (_container as VBox).verticalScrollPolicy = 'false';
      (_container as VBox).horizontalScrollPolicy = 'false';

      _container.percentHeight = 100;
      _container.percentWidth = 100;
    }


    /**
    * Virtuals methods
    */
    protected override function MakeDragAnswer(answer:Answer, parent:IDragAndDrop):DragAnswerControl
    {
      return new DragSortingControl(answer, parent);
    }


    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}