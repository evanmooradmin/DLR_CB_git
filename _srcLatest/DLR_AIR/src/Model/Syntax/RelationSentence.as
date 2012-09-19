package Model.Syntax
{
  import Model.EnumRegExp;
  import Model.FactoryRegExp;
  
  public class RelationSentence extends Relation
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Syntax\RelationSentence.as
    *
    *  Abstract:
    *     This is class for relation sentence
    *     
    *  Author:
    *     Evgenij Welikij   28-December-2009
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
    public static function Compare(wrong:String, right:String):String
    {
      var relationSentence:RelationSentence = new RelationSentence(wrong, right);
      relationSentence.Compare();
      
      return relationSentence.compareHTMLString;
    }
    
    
    /**
    * Private members/properties
    */
    protected var _relationWords:Array = new Array();
    protected var _arrayOfRightWords:Array = new Array();
    protected var _arrayOfWrongWords:Array = new Array();
    
    /**
    * Private methods
    */
    // создает пустую строку длинной в pattern.length
    private function CreateEmptyString(pattern:String):String
    {
      var result:String = "";
      
      for (var i:int = 0; i < pattern.length; i++)
        result += " ";
      return result;  
    }
    
    //Метод разбивает строку на три состовляющих на знаки до слов знаки после слова и слово 
    //Возвращает масив этих состовляющих
    private function stringBroken(string:String):Array
    { 
  //      regExpArray.push(pattern = /[<>\/a-zA-Z0-9]+.*()/g,
//                       pattern = /(.*?)[,.?!;:\"\”\“].*$/g,
//                       pattern = /.*?([,.?!;:\"\”\“].*?)/g);
      
        var resultArray:Array = new Array();     
      
        var  pattern:RegExp = /[A-z0-9<>]+.*/g;
        var toString:String =  string.replace(pattern,"");
      
        pattern = /([^A-z0-9<>]+?$)/g;
        var centerString:String =  string.replace(pattern,"");
        pattern = /(^[^A-z0-9<>]+)/g;
        centerString =  centerString.replace(pattern,"");
      
        var afterString:String =  string.replace(new RegExp(".*?[A-z0-9^</ub>]+","g"),"");
       
        resultArray.push(toString, centerString, afterString);  
      
      return resultArray; 
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
    public function RelationSentence(wrongString:String, rightString:String)
    {
      super(wrongString, rightString);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function Compare():void
    {
      // Ищим все теги и ставим пробелы между ними и словами  
      var pattern:RegExp = new RegExp("(<\\s*?/{0,1}\\s*?[a-z]{1,2}\\s*?/{0,1}\\s*?>)",'g');
      _rightString = _rightString.replace(pattern,' $1 ');
      //Вырезаем теги с неправельтной строки потому что бодставлять будем с правельной
      _wrongString = _wrongString.replace(pattern,' ');
      //Ищим и нормализируем теги
       pattern = new RegExp("(<)\\s*?(/){0,1}\\s*?([a-z]{1,2})\\s*?(/){0,1}\\s*?(>)",'g');
      _rightString = _rightString.replace(pattern,'$1$2$3$4$5');
      // вырезаем все марки {} число в которых не 0
      _rightString = _rightString.replace(new RegExp('\\{\\s*?[1-9]+\\s*?\\}','g'),' ');
      _wrongString = _wrongString.replace(new RegExp('\\{\\s*?[1-9]+\\s*?\\}','g'),' ');
      // ставим пробелы между {}
      _rightString = _rightString.replace(FactoryRegExp.instance.Mark(EnumRegExp.G),' $1 ');
      _wrongString = _wrongString.replace(FactoryRegExp.instance.Mark(EnumRegExp.G),' $1 ');
      // удаляем пробелы между <закрытым тегом и словом>
      _rightString = _rightString.replace(new RegExp('([A-z]+?)\\s+?(<\\s*?/\\s*?[a-z]{1,2}\\s*?>)','g'),'$1$2');
       // удаляем пробелы между <открытым тегом и словом>
      _rightString = _rightString.replace(new RegExp('(<\\s*?[a-z]{1,2}\\s*?>)\\s+?([A-z])','g'),'$1$2');
         //Удаляем пробелы между словами и ковычками " слово слово " на "слово слово"
      _rightString = _rightString.replace(new RegExp('(["”]+?)(\\s*?)([A-z0-9].*?[A-z0-9]*?)(\\s*?)(["”]+?)','g'), ' $1$3$5 ');
      _wrongString = _wrongString.replace(new RegExp('(["”]+?)(\\s*?)([A-z0-9].*?[A-z0-9]*?)(\\s*?)(["”]+?)','g'), ' $1$3$5 ');
      // удаляем пробелы между словом и знаком типа зяпятая точка итд
       _rightString = _rightString.replace(new RegExp('([A-z>])\\s+?([,.?!;:’\”])\\s+?','g'),'$1$2');
       _wrongString = _wrongString.replace(new RegExp('([A-z>])\\s+?([,.?!;:’\”])','g'),'$1$2');
      //Удаляем пробелы между ковычками и словом
      _rightString = FactoryRegExp.NormalazeString(_rightString);
      _wrongString = FactoryRegExp.NormalazeString(_wrongString);

       
      var rightWordsArray:Array = _rightString.split(" ");      // разбиваем верную строку на слова
      var wrongWordsArray:Array = _wrongString.split(" ");      // разбиваем неправильную строку на слова

      var indexWrong:int = 0;        // индекс для прохода по неверной строке
      var indexRight:int = 0;        // индекс для прохода по верной строке
      var relationWord:RelationWord;
      var regExpArray:Array = new Array();
      //В переменной храниться значение был ли тег одни или вместе со словом
      var isTegOnly:Boolean = false;
      _compareHTMLString = "";
      _relationWords = new Array();
                         
      for (indexRight = 0; indexRight < rightWordsArray.length; indexRight++, indexWrong++)
      {
        isTegOnly = false;  
        // если нашли в правельной строке тег то добовляем его в _compareHTMLString
        if (rightWordsArray[indexRight].toString().search(FactoryRegExp.instance.AllTegs(EnumRegExp.G)) != -1)
        {
          // вырезаем теги и проверяем если там буквы если нет то добовляем тег в html строку
          var string:String = rightWordsArray[indexRight].toString().replace(FactoryRegExp.instance.AllTegs(EnumRegExp.G),'');
          string = FactoryRegExp.NormalazeString(string);
          if (string == '')
          {
             _compareHTMLString += rightWordsArray[indexRight].toString();
             indexWrong --;
             isTegOnly = true;
          }
        }
        if (isTegOnly == false) 
        {
            if (rightWordsArray[indexWrong].toString().search(FactoryRegExp.instance.Mark(EnumRegExp.G)) == -1)
            {
             var  StrRight:String =  rightWordsArray[indexRight].toString();
             var  StrWrong:String =  wrongWordsArray[indexWrong].toString();
         
             //разбиваем слово на 3 состовляющих -  на знаки до слова на слово и на знаки после слова  
             var arrayStrRight:Array = this.stringBroken(StrRight);
             var arrayStrWrong:Array = this.stringBroken(StrWrong);
                
             for (var i:int=0; i<3; i++)
             {
                 relationWord = new RelationWord(arrayStrWrong[i], arrayStrRight[i]);
                 relationWord.Compare();
                 _relationWords.push(relationWord);
                 _compareHTMLString += relationWord.compareHTMLString;
              }
             _compareHTMLString += " ";
            }  
        }
      }
    }
    
  
        
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    
    
  }
}