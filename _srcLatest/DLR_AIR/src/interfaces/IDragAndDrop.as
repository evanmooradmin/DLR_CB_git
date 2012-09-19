package interfaces
{
  import Controls.AnswerControls.DragAnswers.DragAnswerControl;

  public interface IDragAndDrop
  {
    function DropObject(object:DragAnswerControl):void;
    function RemoveDragObject(object:DragAnswerControl):void;
  }
}