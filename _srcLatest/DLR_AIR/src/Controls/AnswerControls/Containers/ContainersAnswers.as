package Controls.AnswerControls.Containers
{
  import Controls.AnswerControls.DragAnswers.DragAnswerControl;
  import Controls.PromptControls.PromptControl;
  
  import Model.Answers.Answer;
  import Model.Prompts.Prompt;
  
  import flash.display.DisplayObject;
  import flash.utils.Dictionary;
  
  import interfaces.IDragAndDrop;
  
  import mx.core.UIComponent;

  public class ContainersAnswers extends PromptControl implements IDragAndDrop
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\AnswerControls\Containers\ContainersAnswers.as
    *
    *  Abstract:
    *     This is base container for answers control
    *
    *  Author:
    *     Evgenij Welikij   26-October-2009
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
    protected var _dragAnswerControls:Array = new Array();
    protected var _relatedCanvas:Dictionary = new Dictionary();

    protected var _container:UIComponent;                        // контайнер в который будут ложится dragAnswers


    /**
    * Private methods
    */
    // remove drag answer control from array
    private function RemoveDragAnswerControl(object:DragAnswerControl):void
    {
      for (var i:int = 0; i < _dragAnswerControls.length; i++)
        if (object == _dragAnswerControls[i])
        {
          _dragAnswerControls.splice(i, 1);
          break;
        }
    }



    // перемешиваем ответы
    protected function Shaffle():void
    {
      var isFinishSorting:Boolean = false;
      var arrayFromObjects:Array = new Array();
      var obj:DisplayObject;
      var randIndex:int;
      var len:int = _container.numChildren;

     for each (var item:UIComponent in (_container as Object).getChildren())
     {
         arrayFromObjects.push(item);
        _container.removeChild(item);
      }
      arrayFromObjects.reverse();
      //Меняем местами средне число
      if (arrayFromObjects.length%2 != 0)
      {
        var temp:UIComponent;
        var index:int = Math.abs(arrayFromObjects.length/2);
        temp = arrayFromObjects[index];
        arrayFromObjects[index] =  arrayFromObjects[index -1];
        arrayFromObjects[index -1] =  temp;
      }
     for each (item in arrayFromObjects)
        _container.addChild(item);

//      //Цыкл по количеству ответов
//      for (var i:int = 0; i < len; i++)
//      {
//        randIndex = Math.random() * 10 % len;
//        obj = _container.getChildAt(randIndex);
//
//        arrayObjects  = (obj as Canvas).getChildren();
//        if ((arrayObjects[0] as AnswerControl).answer.nu  == i)
//        {
//          _container.removeChildAt(randIndex);
//          _container.addChild(obj);
//        }
//      }
    }


    /**
    * Events handler
    */


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function ContainersAnswers(prompt:Prompt, container:UIComponent)
    {
      super(prompt);

      _container = container;

      var dragAnswerControl:DragAnswerControl;
      var canvas:DragAnswerControlContainer;

      for each (var item:Answer in prompt.ChildAnswers())
      {
        dragAnswerControl = MakeDragAnswer(item, this);
        dragAnswerControl.currentParentObject = this;
        
        //Канвас нужен что бы сохранить позицию слова в VBox
        canvas = new DragAnswerControlContainer(dragAnswerControl);
        canvas.addChild(dragAnswerControl);
       _relatedCanvas[dragAnswerControl] = canvas;

        _dragAnswerControls.push(dragAnswerControl);
        _container.addChild(canvas);
      }
      
      this.addChild(_container);
    }


    /**
    * Virtuals methods
    */
    public override function FontName():void
    {
     // super.FontName();
      for each (var item:DragAnswerControl in _dragAnswerControls)
        item.fontName = _fontName;
    }

    public override function FontSize():void
    {
    //  super.FontSize(size);
      for each (var item:DragAnswerControl in _dragAnswerControls)
        item.fontSize = _fontSize;
    }

    public override function FontColor():void
    {
    //  super.FontColor();
      for each (var item:DragAnswerControl in _dragAnswerControls)
        item.fontColor = _fontColor;
    }

    public virtual function DropObject(object:DragAnswerControl):void
    {
      object.currentParentObject = this;
      object.isDroped = true;
      object.x = 0;
      object.y = 0;
      DragAnswerControlContainer(_relatedCanvas[object]).addChild(object);
      
      
      _dragAnswerControls.push(object);
    }

    public virtual function RemoveDragObject(object:DragAnswerControl):void
    {
      // save sizes for parent canvas
      object.parent.height = object.height;
      object.parent.width = object.width;

      RemoveDragAnswerControl(object);
    }
    
    protected virtual function MakeDragAnswer(answer:Answer, parent:IDragAndDrop):DragAnswerControl
    {
      return null;
    }

    public override function set isDefault(value:Boolean):void
    {
      super.isDefault = value;

      for each (var item:DragAnswerControl in _dragAnswerControls)
        item.isDefault = value;
    }


    /**
    * Public members/properties
    */
    public function get dragObjects():Array
    {
      return _dragAnswerControls;
    }

    
    /**
    * Public methods
    */


  }
}