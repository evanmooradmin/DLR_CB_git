package interfaces
{
  public interface IFontStyle
  {
    function FontName():void;
    function FontSize():void;
    function FontColor():void;
   
    function set fontName(name:String):void;
    function set fontSize(size:int):void;
    function set fontColor(color:int):void

    function Bold():void;
    function DefaultFont():void;
  }
}