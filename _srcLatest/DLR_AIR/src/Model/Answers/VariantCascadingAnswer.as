package Model.Answers
{
  import Model.Activity;
  import Model.EmbededData;

  public class VariantCascadingAnswer extends Answer
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
      protected var _answers:Array = [];
      protected var _answer:String;
      protected var _previewString:String;


      /**
      * Private methods
      */
      private function CreateReachString(wrongString:String, rightString:String):String
      {
          var resultString:String = "";
         //удаляем теги
         var pattern:RegExp = new RegExp("(<\\s*?/{0,1}\\s*?[a-z]{1,2}\\s*?/{0,1}\\s*?>)",'g');
         var wrongString:String =  wrongString.replace(pattern,' ');
         var rightString:String =  rightString.replace(pattern,' ');

         var editDistance:EditDistance = new EditDistance(rightString, wrongString, EmbededData.inctance.iconCorrectColorHex);
         resultString = editDistance.compareString;
         resultString = resultString.replace(new RegExp('\n','g'),'');

         return resultString;
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
      public function VariantCascadingAnswer(ID:int, relatedPromptID:int, isCorrect:Boolean, num:int, text:String,
          answer:String, previewString:String, relatedAnswerID:int = 0, activity:Activity=null)
      {
        //Нормализируем теги U
         var pattern:RegExp = new RegExp("(<\\s*?u\\s*?/\\s*?>)",'g');
         text = text.replace(pattern,'</u>');

         super(Answer.VARIANT_CASCADING, ID, relatedPromptID, isCorrect, num, text, relatedAnswerID, activity);

         this._previewString = previewString;
         this._answer = this.CreateReachString(text, answer);
      }

      /**
      * Virtuals methods
      */
      public override function AddAnswer(answer:Answer):int
      {
        if (answer.relatedAnswerID == ID)
          _answers.push(answer);
        return _answers.length;
      }

      public override function ChildAnswers():Array
      {
        return _answers;
      }

      public override function deserialize(componentNode:XML):void
      {
         var userAnswer:String = "";
         userAnswer = componentNode.@result;
         this._result = userAnswer;    
      }
      
      public override function getChildren():Array
      {
        return _answers;
      }
    
      
      /**
      * Public members/properties
      */
      
      
      public function get answer():String
      {
        return this._answer;
      }

      public function get previewString():String
      {
        return this._previewString;
      }


      /**
      * Public methods
      */



  }
}