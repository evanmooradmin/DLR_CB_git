package Controls.AnswerControls.DragAnswers
{
  import Model.Answers.SortingImage;
  import Model.EmbededData;

  import interfaces.IDragAndDrop;

  import mx.controls.Image;

  public class DragSortingImageControl extends DragAnswerControl
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
    protected var _image:Image = new Image();

    protected var _maxWidth:int = 200;
    protected var _maxHeight:int = 200;    // размеры картинки не должны привышать этих значений


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
    public function DragSortingImageControl(answer:SortingImage, parent:IDragAndDrop)
    {
      super(answer, parent);

      shadowFilter = true;

      _image.source = EmbededData.inctance[EmbededData.img + answer.source];
      _image.maxWidth = _maxWidth;
      _image.maxHeight = _maxHeight;

      this.addChild(_image);
    }


    /**
    * Virtuals methods
    */
    public override function GetText():String
    {
      return (this.answer as SortingImage).answer.toString();
    }


    /**
    * Public members/properties
    */
    public function set imageWidth(value:int):void
    {
      if (value < _image.contentWidth)
        _image.width = value;
    }
    public function get imageWidth():int
    {
      if (_image.contentWidth > _maxWidth && !_image.width)
        return _maxWidth;

      return _image.width && _image.width < _image.contentWidth ? _image.width : _image.contentWidth;
    }

    public function set imageHeight(value:int):void
    {
      if (value < _image.contentHeight)
        _image.height = value;
    }
    public function get imageHeight():int
    {
      if (_image.contentHeight > _maxHeight && !_image.height)
        return _maxHeight;

      return _image.height && _image.height < _image.contentHeight ? _image.height : _image.contentHeight;
    }


    /**
    * Public methods
    */



  }
}