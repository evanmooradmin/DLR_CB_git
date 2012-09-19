package Controls.AnswerControls
{
  import Controls.ActivityControl;
  import Controls.SimplePromptControls.VariantOrViewControl;
  
  import Model.Answers.Answer;
  import Model.Answers.VariantORAnswerConteiner;
  
  import interfaces.IBasePrompt;

  public class VariantOrAnswerControl extends AnswerControl
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
      public function VariantOrAnswerControl(answer:VariantORAnswerConteiner)
      {
        super(answer);
        
        _control = new VariantOrViewControl();
        
        this.addChild(_control);
      }      
      
      /**
      * Virtuals methods
      */
      public override function Init(answer:Answer):void
      {
        IBasePrompt(_control).Init(answer);
      }
    
      public override function FontName(name:String):void
      {
        super.FontName(name);
        IFontStyle(_control).FontName(name);
      }
      
      public override function FontSize(size:int):void
      {
        super.FontSize(size);
        IFontStyle(_control).FontSize(size);
      }
      
      public override function FontColor(color:int):void
      {
        super.FontColor(color);
        IFontStyle(_control).FontColor(color);
      }
      
      public override function CheckAnswer():void
      {
        if (!IResult(_control).IsComplete())
          throw new Error("Make sure you have completed all of the questions. Read the directions if you need help.");
          
        var isSetCorrect:Boolean = false;
        //Проебегаем по всем насверам которые находяться в контейнере и проверяем их ответ с ответом который ввел пользователь
        // если хоть один ответ совпадает выводим состояние SetCorrect
        for each (var item:Answer in (_answer as VariantORAnswerConteiner).ChildAnswers())
        {
         if (IResult(_control).GetText() == item.text)
         {
           
           if (ActivityControl.instance.needScoreReport == false)
           {   
             IResult(_control).SetCorrect();
           }
             isSetCorrect = true;
             break;
         }
        }
        if (isSetCorrect == false)
        {
           if (ActivityControl.instance.needScoreReport == false)
                IResult(_control).SetIncorrect();
        }
        _isCorrect  = isSetCorrect;
      }
      
      public override function ShowAnswer():void
      {
        IResult(_control).SetCorrect();
      }
      
      public override function IsComplete():Boolean
      {
        return IResult(_control).IsComplete();
      }
      
      public override function Continue():void
      {
        IResult(_control).Continue();
      }    
          
      /**
      * Public members/properties
      */
      
      
      /**
      * Public methods
      */
          
    
 
    
    
    
  }
}