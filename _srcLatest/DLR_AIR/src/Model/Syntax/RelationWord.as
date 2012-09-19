package Model.Syntax
{
  import Model.EnumRegExp;
  import Model.FactoryRegExp;
  
  public class RelationWord extends Relation
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\Syntax\RelationWord.as
    *
    *  Abstract:
    *     This is class for relation word
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
    
    
    /**
    * Private members/properties
    */
    protected var _relationSymbols:Array;
    
    
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
    public function RelationWord(wrongString:String, rightString:String)
    {
      super(wrongString, rightString);
    }
    
    
    /**
    * Virtuals methods
    */
    public override function Compare():void
    {
      var rightSymbol:String;
      var wrongSymbol:String;
      var indexWrong:int = 0;        // индекс для прохода по неверной строке
      var indexRight:int = 0;        // индекс для прохода по верной строке
      var relationSymbol:RelationSymbol;
      var tegsAfterWord:String = '';
    
      _compareHTMLString = "";
      _relationSymbols = new Array();
     // разбиваем строку на теги до слова и теги после слова
      var tegs:Array =  new RegExp('(<\\s*?[a-z]+\\s*?>)+','').exec(_rightString);
      if (tegs != null && tegs[0] != null)
      {
          _compareHTMLString += tegs[0]; 
          _rightString =  _rightString.replace(new RegExp(tegs[0],''),'');
      }
      tegs =   new RegExp('(<\\s*?/{0,1}\\s*?[a-z]+\\s*?/{0,1}\\s*?>)+','').exec(_rightString);
      if (tegs != null && tegs[0] != null)
           tegsAfterWord = tegs[0]; 
      
      //здесь вырезаем теги чтоб осталось только слово
      _rightString = _rightString.replace(FactoryRegExp.instance.AllTegs(EnumRegExp.G),'');
      
      for (indexRight = 0; indexRight < _rightString.length; indexRight++) 
      {
        // копируем символы
        rightSymbol = _rightString.charAt(indexRight);
        if (indexWrong < _wrongString.length)
          wrongSymbol = _wrongString.charAt(indexWrong);
        else
          wrongSymbol = " ";
        
        // новое отношение
        relationSymbol = new RelationSymbol(wrongSymbol, rightSymbol);
        
        // если символы "равны" то indexWrong увеличиваем на 1
       // if (RelationSymbol.Compare(rightSymbol, wrongSymbol) && _rightString.length != _wrongString.length)
          indexWrong++;
        
        _relationSymbols.push(relationSymbol);
        relationSymbol.Compare();
        
        _compareHTMLString += relationSymbol.compareHTMLString; 
      }
      _compareHTMLString += tegsAfterWord;
    }
        
        
    /**
    * Public members/properties
    */
    
    
    /**
    * Public methods
    */
    
    
  }
}