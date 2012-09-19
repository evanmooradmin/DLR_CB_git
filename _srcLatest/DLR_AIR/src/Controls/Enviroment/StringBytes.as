package Controls.Enviroment
{
  import flash.utils.ByteArray;

  public class StringBytes
  {
    /***************************************************************
     *  
     *  Module Name:
     *		StringBytes.as
     *    
     *  Abstract:
     *		Статический класс котрорый содержит методы для преобразования
     *    объекта ByteArray в String и обратно.
     *    
     *  Author:
     *		Evgenij Welikij		May 10, 2011
     *    
     *  Revision History:
     *  
     ***************************************************************/
    
    
    /**
     * Static
     */
    public static function toString(ba:ByteArray):String
    {
      var acum:String = "";             // результирующая строка
      
      ba.position = 0;
      
      // цикл по каждому "байту"
      while (ba.position < ba.length)
      {
        var byte:String = ba.readUnsignedByte().toString(16);     // читаем байт в хексе
        
        while (byte.length < 2)                                   // приводим к хекс виду
        {
          byte = "0" + byte;
        }
        
        acum += byte;
      }
      
      return acum;
    }
    
    public static function toByteArray(str:String):ByteArray
    {
      if (str.length % 2 != 0)
        return null;
      
      var ba:ByteArray = new ByteArray();
      
      for (var i:int = 0; i < str.length; i += 2)
      {
        var byte:int = parseInt("0x" + str.substr(i, 2));
        ba.writeByte(byte);
      }
      
      ba.position = 0;
      
      return ba;
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
    public function StringBytes()
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
    
    
  }
}