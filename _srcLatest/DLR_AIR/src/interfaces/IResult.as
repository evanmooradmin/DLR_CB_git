package interfaces
{
  public interface IResult
  {
    function SetCorrect():void;
    function SetIncorrect():void;
    function Continue():void;
    function SaveResults():void;
    function LoadResults(needCheckAnswer:Boolean = false):void;
    function IsComplete():Boolean;
    function GetText():String;
   
    
  }
}