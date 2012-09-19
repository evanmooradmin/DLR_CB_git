package interfaces
{
  import Model.StateTypes;
  
  import flash.events.MouseEvent;
  
  public interface IButtonManager
  {
    function Click_btnContinue(event:MouseEvent):void
    function Click_btnBack(event:MouseEvent):void
    function Click_btnDone(event:MouseEvent):void  
    function get currentStateControl():StateTypes
  }
}