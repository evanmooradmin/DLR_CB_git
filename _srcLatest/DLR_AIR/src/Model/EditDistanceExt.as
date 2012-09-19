package Model
{
  public class EditDistanceExt
  {
    /***************************************************************
    *
    *  Module Name:
    *     Model\EditDistanceExt.as
    *
    *  Abstract:
    *     Расширенный класс сравнения строк, который учитывает перестановку
    *     слов в предложении.
    *
    *  Author:
    *     Evgenij Welikij   08-April-2010
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
    protected var _rightString:String = "";    // верная строка
    protected var _wrongString:String = "";    // неверная строка
    protected var _color:String;               // цвет подсветки букв

    protected var _rightWords:Array;    // массив верных слов
    protected var _wrongWords:Array;    // массив неверных слов

    // граф который будет отображать различие между каждыми словами _right и _wrong строк
    // первая строка содержит слова из _wrong, а первый столбец - _right
    // последняя строка сыммы соответствующих стобцов
    // последний столбец суммы соответствующих строк
    protected var _grap:Array;

    protected var _graphWidth:int;      // размеры графа
    protected var _graphHeight:int;

    protected var _compareString:String = "";      // строка с результатом

    /**
    * Private methods
    */
    private function InitGraph():void
    {
      _graphHeight = _rightWords.length + 2;
      _graphWidth = _wrongWords.length + 2

      // инициализация
      _grap = new Array(_graphHeight);
      for (var i:int = 0; i < _graphHeight; i++)
        _grap[i] = new Array(_graphWidth);

      // заполняем первый ряд неверными словами
      for (i = 1; i < _graphWidth - 1; i++)
        _grap[0][i] = _wrongWords[i - 1];

      // заполняем первый столбец верными словами
      for (i = 1; i < _graphHeight - 1; i++)
        _grap[i][0] = _rightWords[i - 1];

      // раставляем вес разлиция слов
      var editDistance:EditDistance;
      for (i = 1; i < _graphHeight - 1; i++)                  // ряды
        for (var j:int = 1; j < _graphWidth - 1; j++)       // столбец
        {
          editDistance = new EditDistance(_grap[i][0], _grap[0][j], _color);
          _grap[i][j] = editDistance;
        }
    }

    // удаляет из графа ряд с узанным индексом
    private function RemoveRow(rowIndex:int):void
    {
      if (rowIndex > 0 && rowIndex < _graphHeight - 1)
      {
        _grap[rowIndex] = new Array(_graphWidth);
      }
    }

    //удаление из таблицы столбца. Для каждой строки копировать в массив данные до
    //указанного стобца и после, но не в нем
    private function RemoveColumn(columnIndex:int):void
    {
      if (columnIndex > 0 && columnIndex < _graphWidth - 1)
      {
        var currRow:Array;
        for(var i:int=0;i<_graphHeight-1;i++)
        {
          currRow = new Array(_graphWidth);
          for(var j:int =0;j<_graphWidth-1;j++)
            if (columnIndex!=j)
            {
              currRow[j] = _grap[i][j];
            }
            _grap[i]= currRow;
        }
      }
    }

    // метод подсчитывает суммы всех рядов
    // т. о. если в неправильной строке нехватает слова
    // минимальная сумма показывает что это за слово
    private function SetRowsSum():void
    {
      var sum:int;
      for (var i:int = 1; i < _graphHeight - 1; i++)
      {
        sum = 0;

        for (var j:int = 1; j < _graphWidth - 1; j++)
          sum += _grap[i][j];

        _grap[i][_graphWidth - 1] = sum;
      }
    }

    // метод подсчитывает суммы всех столбцов
    // т. о. если в правильной строке нехватает слова
    // минимальная сумма показывает что это за слово
    private function SetColumnsSum():void
    {
      var sum:int;
      for (var i:int = 1; i < _graphWidth - 1; i++)
      {
        sum = 0;

        for (var j:int = 1; j < _graphHeight - 1; j++)
          sum += _grap[j][i];

        _grap[_graphHeight - 1][i] = sum;
      }
    }

    //остались ли в таблице данные?
    //1 = таблица пустая полностью
    //2 = в таблице данные только в 0ом столбце
    //3 = таблица не пустая
    private function IsEmptyTable():int
    {
      var isOut:Boolean = false;
      var isStillEmpty:Boolean = true;
      for (var i:int = 0; i < _graphHeight - 2; i++)
        for (var j:int = 0; j < _graphWidth - 2; j++)
          if(_grap[i][j] != undefined)
          {
            isStillEmpty = false;
            if (j==0)
              isOut = true;
          }
      if (isStillEmpty)
        return 1;
      if (isOut)
        return 2;
      else return 3;
    }

    private function BuildCompareString():void
    {
      var minDistance:int;     // для поиска минимального расстояния между строками
      var maxDistance:int;     // для поиска максимального расстояния между строками
      var minColumn:int;      //для поиска минимального значения в столбце
      var rightWord:String;
      var wrongWord:String;    // слово рассояние с каким минимально
      var minColumnIndex:int;  //индекс стобца с минимальным расстоянием
      var minRowIndex:int;    //индекс стороки с минимальным расстоянием
      var excessIndex:int;     // индекс лишнего столбща либо строки

      var editDistance:EditDistance;

      _compareString = "";
      var editItems:Array = new Array(_graphHeight-2);
      var isComplete:Boolean = false;
      while(!isComplete)
      {
        isComplete = true;
        for (var i:int = 1; i < _graphHeight - 1; i++)
        {
          minDistance = int.MAX_VALUE;
          rightWord = _grap[i][0];
          minColumn = int.MAX_VALUE;

          // ищем минимум в строке
          for (var j:int = 1; j < _graphWidth - 1; j++)
            if (_grap[i][j]&&(_grap[i][j] as EditDistance).distance < minDistance)
            {
              minDistance = (_grap[i][j] as EditDistance).distance;
              minColumnIndex = j;
              minRowIndex = i;
              wrongWord = _grap[0][j];
            }
          //ищем минимум в столбце
          for (var k:int = 1;k<_graphHeight - 1;k++)
            if (_grap[k][minColumnIndex]&&(_grap[k][minColumnIndex] as EditDistance).distance < minColumn)
                minColumn = (_grap[k][minColumnIndex] as EditDistance).distance;
          //если они не совпадают, или вся таблица пуста, то или добавляем слова или слова закончились
          if (minDistance!=minColumn ||(minDistance == int.MAX_VALUE && minColumn==int.MAX_VALUE))
          {
            var isOut:int = IsEmptyTable();
            if (isOut==1)
            {
              isComplete = true;
              break;
            }
            else if (isOut==2)
            {
              editItems[minRowIndex] = new EditDistance(rightWord, " ", _color).compareString;
            }
          }
          //если совпадают, то удаляется строка и столбец, слово убирается в особый массив
          else
          {
            editItems[minRowIndex] = new EditDistance(rightWord, wrongWord, _color).compareString;
            RemoveColumn(minColumnIndex);
            RemoveRow(minRowIndex);
          }
        }
        //обновление вайла
        for (i=1; i<editItems.length;i++)
          if (!editItems[i] && isOut != 1)
            isComplete = false;
      }
      for (i=1; i<editItems.length;i++)
        _compareString += editItems[i] + " ";
    }

    private function NormalazeString(string:String):String
    {
      if (string == null)
          return string;
      var string:String = string;

      // удаляем пробелы в начале строки
      string = string.replace(FactoryRegExp.instance.SpacesStartString(EnumRegExp.Empty),'');
      // удаляем пробелы в конце строки
      string = string.replace(FactoryRegExp.instance.SpacesFinishString(EnumRegExp.Empty),'');
      // Оставляем по одному пробелу между словами
      string = string.replace(FactoryRegExp.instance.DeleteSpaces(EnumRegExp.G), ' ');

      return string;
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
    public function EditDistanceExt(right:String, wrong:String, color:String)
    {
      _rightString = this.NormalazeString(right);
      _wrongString = this.NormalazeString(wrong);
      _color = color;


      _wrongWords = _wrongString.split(" ");
      _rightWords = _rightString.split(" ");

      InitGraph();
      BuildCompareString();
    }


    /**
    * Virtuals methods
    */


    /**
    * Public members/properties
    */
    public function get compareString():String
    {
      return _compareString;
    }


    /**
    * Public methods
    */


  }
}