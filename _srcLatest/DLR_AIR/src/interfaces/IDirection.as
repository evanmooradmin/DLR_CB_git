package interfaces
{
  import Model.Answers.Answer;
  import Model.Prompts.Prompt;

  public interface IDirection
  {
    function CheckAnswer():void;
    function ShowAnswer():void;
    function Continue():void;
    function get isCorrect():Boolean;
  }
}