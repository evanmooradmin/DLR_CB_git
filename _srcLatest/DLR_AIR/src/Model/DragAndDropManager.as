package Model
{
  import Controls.AnswerControls.DragAnswers.DragAnswerControl;
  import Controls.DropAnswerControl;

  import flash.events.MouseEvent;

  import interfaces.IDragAndDrop;

  import mx.core.DragSource;
  import mx.core.UIComponent;
  import mx.events.DragEvent;
  import mx.managers.DragManager;

  public class DragAndDropManager
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\DragAndDropManager.as
    *
    *  Abstract:
    *     This is class for realize drag-and-drop functionality
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
    private var _dragObjects:Array = new Array();
    private var _dropObjects:Array = new Array();
    private var _dragObject:DragAnswerControl;


    /**
    * Private methods
    */


    /**
    * Events handler
    */
    private function mouseMoveHandler(event:MouseEvent):void
    {
      if (event.currentTarget is DragAnswerControl)
      {
        _dragObject = DragAnswerControl(event.currentTarget);
        var dragInitiator:DragAnswerControl = DragAnswerControl(event.currentTarget);
        var ds:DragSource = new DragSource();

        DragAnswerControl(event.currentTarget).isDroped = false;

        ds.addData(dragInitiator, "answer");

        DragManager.doDrag(dragInitiator, ds, event, _dragObject);
      }
    }

    private function dragEnterHandler(event:DragEvent):void
    {
      if (event.dragSource.hasFormat("answer"))
        DragManager.acceptDragDrop(event.target as UIComponent);
    }

    private function dragCompleteHandler(event:DragEvent):void 
    {
      if (event.currentTarget is DragAnswerControl)
      {
        var dragAnswer:DragAnswerControl = event.currentTarget as DragAnswerControl;
        // объект был отпущен не на целевом обьекте
        if (dragAnswer.isDroped == false)
        {
          dragAnswer.currentParentObject.RemoveDragObject(dragAnswer);
          dragAnswer.mainParentObject.DropObject(dragAnswer);
        }
      }
    }

    private function dragDropHandler(event:DragEvent):void
    {
      // проверка на случай бросания обьекта на том-же месте, где он и был
      if (event.currentTarget is DropAnswerControl && event.dragInitiator is DragAnswerControl)
     //  && (event.dragInitiator as DragAnswerControl).currentParentObject != (event.currentTarget as DropAnswerControl))
      {
        (event.dragInitiator as DragAnswerControl).currentParentObject.RemoveDragObject(event.dragInitiator as DragAnswerControl);
        (event.currentTarget as IDragAndDrop).DropObject(event.dragInitiator as DragAnswerControl);
        (event.dragInitiator as DragAnswerControl).isDroped = true; 
      }
    }


    /**
    * Initialization
    */


    /**
    * Constructor
    */
    public function DragAndDropManager(dragObjects:Array, dropObjects:Array)
    {
      this._dragObjects = dragObjects;
      this._dropObjects = dropObjects;

      for each (var itemDrag:UIComponent in dragObjects)
      {
        itemDrag.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
        itemDrag.addEventListener(DragEvent.DRAG_COMPLETE, dragCompleteHandler);
      }

      for each (var itemDrop:UIComponent in dropObjects)
      {
        itemDrop.addEventListener(DragEvent.DRAG_ENTER, dragEnterHandler);
        itemDrop.addEventListener(DragEvent.DRAG_DROP, dragDropHandler);
      }
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */


    /**
    * Public methods
    */


  }
}