package Model
{
  public class EnumRegExp
  {
    public static const G:EnumRegExp = new EnumRegExp("g");
    public static const I:EnumRegExp = new EnumRegExp("i");
    public static const Empty:EnumRegExp = new EnumRegExp("");
    
    private var _parametr:String = "";
    
    public function EnumRegExp(parametr:String)
    {
      _parametr = parametr;
    }
    
    public function get parametr():String
    {
      return _parametr; 
    }

  }
}