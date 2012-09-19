package Model
{
  
  import Model.EnumRegExp;

  public class FactoryRegExp
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
    // константы HTML тегов в "удобном" виде
    public static const BR:String = "<br/>";
    
    public static const P:String = "<p/>";
    
    public static const B:String = "<b/>";
    public static const B_START:String = "<b>";
    public static const B_FINISH:String = "</b>";
    
    public static const U:String = "<u/>"
    public static const U_START:String = "<u>";
    public static const U_FINISH:String = "</u>";
    
    public static const I_START:String = "<i>";
    public static const I_FINISH:String = "</i>";
    
    private static var _instance:FactoryRegExp;
  
    public static function get instance():FactoryRegExp
    {
      if (_instance == null)
      {
        _instance = new FactoryRegExp();
      }
      return _instance;
    }  
    
    public static function NormalazeString(string:String):String
    {
      if (string == null)
          return string;
      var string:String = string;
      
      string = string.replace(new RegExp("\n", "g"), " ");
      // ставим пробелы между {}
      string = string.replace(FactoryRegExp.instance.Mark(EnumRegExp.G),' $1 ');
      //Удаляем пробелы между словами и ковычками " слово слово " на "слово слово"
      string = string.replace(new RegExp('(["”]+?)(\\s*?)([A-z0-9].*?[A-z0-9]*?)(\\s*?)(["”]+?)','g'), ' $1$3$5 ');
      //Удаляем пробелы между словом и знаком пунктуации в конце слова
      string = string.replace(new RegExp('([A-z0-9]*?)\\s+?([.,?:!);]+?)+?','g'),'$1$2');
     // удаляем пробелы в начале строки
      string = string.replace(FactoryRegExp.instance.SpacesStartString(EnumRegExp.Empty),'');
      // удаляем пробелы в конце строки
      string = string.replace(FactoryRegExp.instance.SpacesFinishString(EnumRegExp.Empty),'');  
      // Оставляем по одному пробелу между словами
      string = string.replace(FactoryRegExp.instance.DeleteSpaces(EnumRegExp.G), ' ');  
       return string;
    }
    
    // Метод удаляе пробелы в начале и в конце строки 
    public static function trim(string:String):String
    {
      if (string == null || string == '')
          return string;
         // удаляем пробелы в начале строки
         string = string.replace(FactoryRegExp.instance.SpacesStartString(EnumRegExp.Empty),'');
         // удаляем пробелы в конце строки
         string = string.replace(FactoryRegExp.instance.SpacesFinishString(EnumRegExp.Empty),'');  
       return string;
    }
    
    
    // Метод добавляет тег к каждому слову которые в него входят
     public static function AddTagToEachWord(tagStartPattern:RegExp, tagFinishPattern:RegExp, tagStart:String, tagFinish:String, sentence:String):String
     {
        //нормализируем закрытые теги чтоб не заморачиваться этим в другом месте
        sentence = sentence.replace(new RegExp('<\\s*?([a-z]{1,2})\\s*?/\\s*?>','g'),'</$1>');
        var tagStartIndex:int = sentence.search(tagStartPattern);   // начало тега 
        var tagFinishIndex:int = sentence.search(tagFinishPattern); // конец тега
         
        if (tagStartIndex != -1 && tagFinishIndex != -1)
        {
            var strMustTagged:String = sentence.substring(tagStartIndex, tagFinishIndex);  // сткрока которая расположена между тегами
            var strTo:String = sentence.substring(0, tagStartIndex);     // строка до тега
            var strAfter:String = sentence.substr(tagFinishIndex);       // строка после тега
            
            // нормализируем начальный и конечный тег
            strMustTagged = strMustTagged.replace(tagStartPattern, tagStart);
            strMustTagged = strMustTagged.replace(tagFinishPattern, tagFinish);
         
            // все пробелы заменяем на "<tagFinish> </tagStart>", т. е. каждое слово будет иметь <tagStart>такой<tagFinish/> <tagStart>вид<tagFinish/>  
            strMustTagged = strMustTagged.replace(FactoryRegExp.instance.DeleteSpaces(EnumRegExp.G), tagFinish + " " + tagStart);
            sentence = strTo + strMustTagged + strAfter;
        }
        // удаляум все теги вида <e><e/>
        sentence = sentence.replace(new RegExp('<\\s*?([brubp])\\s*?>\\s*?<\\s*?/{0,1}\\s*?$1\\s*?/{0,1}\\s*?>','g'),''); 
        // удаляем случаи типа <u><тег></u>
        sentence = sentence.replace(new RegExp('<\\s*?u\\s*?>\\s*?(<.+>)\\s*?<\\s*?/\\s*?u\\s*?>','g'),'$1');
     
        //отсавляем по 1 проебелу
        sentence = sentence.replace(FactoryRegExp.instance.DeleteSpaces(EnumRegExp.G),' ');
        return sentence;
    } 

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
    public function FactoryRegExp()
    {
   
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
    public function BR(parametr:EnumRegExp):RegExp
    {      
      return new RegExp("<\\s*?/{0,1}\\s*?br\\s*?/{0,1}\\s*?>", parametr.parametr);    
    }
    
    public function BR_spaces(parametr:EnumRegExp):RegExp
    {
      return new RegExp("\\s*?<\\s*?/{0,1}\\s*?br\\s*?/{0,1}\\s*?>\\s*?", parametr.parametr);
    }
    
    public function P(parametr:EnumRegExp):RegExp
    {      
      return new RegExp("<\\s*?/{0,1}\\s*?p\\s*?/{0,1}\\s*?>", parametr.parametr);    
    }
   // Находим однин тег P или множество
    public function AllP(parametr:EnumRegExp):RegExp
    {      
      return new RegExp("(<\\s*?/{0,1}\\s*?p\\s*?/{0,1}\\s*?>)+", parametr.parametr);    
    }
     // Находим все теги  или множество
    public function AllTegs(parametr:EnumRegExp):RegExp
    {      
      return new RegExp("(<\\s*?/{0,1}\\s*?[a-z]+\\s*?/{0,1}\\s*?>)+", parametr.parametr);    
    }
    
    // <b/>
    public function B(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?/{0,1}\\s*?[bB]\\s*?/{0,1}\\s*?>", parametr.parametr);
    }
    
    // __<b>__
    public function B_start(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?b\\s*?>", parametr.parametr);
    }
    
    // __<b/>__
    public function B_finish(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?/\\s*?b\\s*?>", parametr.parametr);
    }
   
    // __<b/>__
    public function B_center(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?b\\s*?>.*?<\\s*?b\\s*?/\\s*?>", parametr.parametr);
    }
    
    // <u/>
    public function U(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?/{0,1}\\s*?[uU]\\s*?/{0,1}\\s*?>", parametr.parametr);
    }
    
    // __<u>__
    public function U_start(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?u\\s*?>", parametr.parametr);
    }
    
    // __<u/>__
    public function U_finish(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?/\\s*?u\\s*?>", parametr.parametr);
    }
    
    //<u>текст</u>
    public function U_center(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?u\\s*?>.*?<\\s*?/{0,1}\\s*?u\\s*?/{0,1}\\s*?>", parametr.parametr);
    }
    
    // <em>
    public function EM_start(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?em\\s*?>", parametr.parametr);
    }
    
    // __<em/>__
    public function EM_finish(parametr:EnumRegExp):RegExp
    {
      return new RegExp("<\\s*?/\\s*?em\\s*?>", parametr.parametr);
    }
    
    // __ Удаляет боле 2-х пробелов в строке
    public function DeleteSpaces(parametr:EnumRegExp):RegExp
    {
      return new RegExp("\\s\\s*", parametr.parametr);
    }
    
     // __ Удаляет пробелы в начале строки
    public function SpacesStartString(parametr:EnumRegExp):RegExp
    {
      return new RegExp("^\\s*", parametr.parametr);
    }
     // __ Удаляет пробелы в конце строки
    public function SpacesFinishString(parametr:EnumRegExp):RegExp
    {
      return new RegExp("\\s*$", parametr.parametr);
    }
    
    // {id} или {n}
    public function Mark(parametr:EnumRegExp, id:int = -1):RegExp
    {
      if (id == -1)
        return new RegExp("(\\{\\s*?[0-9]+\\s*?\\})", parametr.parametr);
      return new RegExp("\\{\\s*(" + id.toString() + ")\\s*\\}", parametr.parametr);
    }
    
    // регулярное выражение для {n}abc{n}
    public function DeleteMark(parametr:EnumRegExp, id:int):RegExp
    {
      return new RegExp("\\{\\s*" + id.toString() + "\\s*\\}[^\\s]+\\{\\s*" + id.toString() + "\\s*\\}", parametr.parametr);
    }
   
  }
}