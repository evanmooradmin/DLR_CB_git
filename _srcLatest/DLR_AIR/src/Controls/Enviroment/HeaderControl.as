package Controls.Enviroment
{
  import Controls.ActivityControl;
  import Controls.QuizControl;

  import Model.Events.VerticalScrollCreate;

  import mx.containers.HBox;
  import mx.core.ScrollPolicy;
  import mx.core.UIComponent;
  import mx.events.FlexEvent;
  import mx.events.ResizeEvent;

  public class HeaderControl extends HBox
  {
    /***************************************************************

    *  Module Name:
    *
    *
    *  Abstract:
    *    Данный класс является контейнером для картинки и контрола который передаем на вход (предположительно SimpleText)
    *     ипользуеться в заголовках промтов что бы быстро подключить и отобразить картинку и текст рядом с ней
    *     при отображении отчета
    *
    *  Author:
    *     Ruban Sergey
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
    private var _imageReport:ImageReport = new ImageReport();
    private var _control:UIComponent;


    /**
    * Private methods
    */


    /**
    * Events handler
    */

    private function ResizeImageReport_Handler(event:ResizeEvent):void
    {
      if (_control != null)
        _control.width = this.width - _imageReport.width;
    }

    /**
    * Initialization
    */


    /**
    * Constructor
    */

    public function HeaderControl(control:UIComponent = null)
    {
      super();
      this.verticalScrollPolicy = ScrollPolicy.OFF;
      this.horizontalScrollPolicy = ScrollPolicy.OFF;

      this.percentWidth = 100;

      this.setStyle("horizontalGap", "0");
      this.setStyle("verticalGap", "0");
      
      //this.addChild(_imageReport);
      if (control != null)
      {
        _control = control;
        _control.percentWidth = 100;
        this.addChild(_control);
        _imageReport.addEventListener(ResizeEvent.RESIZE, ResizeImageReport_Handler);
      }
    }

    /**
    * Virtuals methods
    */

    /**
    * Public members/properties
    */
    public function get imageReport():ImageReport
    {
      return this._imageReport;
    }



  /**
  * Public methods
  */



  }
}