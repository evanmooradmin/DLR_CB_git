package interfaces
{
  import Model.Answers.Answer;
  import Model.Prompts.Prompt;
  
  public interface IBasePrompt 
  {
    function getChildren():Array
    function serialize():XML
    function getAllLeafComponents():Array;
    function deserialize(componentNode:XML):void
    function getByID(componentID:int):IBasePrompt
  }
}