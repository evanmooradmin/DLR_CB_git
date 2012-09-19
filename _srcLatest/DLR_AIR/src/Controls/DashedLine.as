package Controls
{
  import flash.display.GradientType;
  import flash.display.InterpolationMethod;
  import flash.display.SpreadMethod;
  import flash.geom.Matrix;
  import flash.geom.Point;
  
  import mx.core.UIComponent;
  
  public class DashedLine
  {
    /***************************************************************
    *
    *  Module Name:
    *     Controls\DashedLine.as
    *
    *  Abstract:
    *     This is class for drawing dashed line
    *     
    *  Author:
    *     Evgenij Welikij   29-October-2009
    *
    *  Revision History:
    *
    ***************************************************************/
        
        
    /**
    * Static
    */
    public static function DrawLine(point1:Point, point2:Point, color:int, target:UIComponent):void
    {
      var dashLine:DashedLine = new DashedLine(point1, point2, color, target);
      
      dashLine.Draw();
    }
    
    
    /**
    * Private members/properties
    */
    protected var _dashLen:int = 20;
    protected var _spaceLen:int = 15;
    
    protected var _point1:Point;
    protected var _point2:Point;
    protected var _color:int;
    protected var _target:UIComponent;
    
    
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
    public function DashedLine(point1:Point, point2:Point, color:int, target:UIComponent)
    {
      this._point1 = point1;
      this._point2 = point2;
      this._color = color;
      this._target = target;
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
    public function Draw():void
    {
      _target.graphics.lineStyle(1, _color);
        
      var colors:Array = [_color, _color];
      var alphas:Array = [0, 1];
         
      var ratios:Array = [_dashLen, _spaceLen];
  
      var matrix:Matrix = new Matrix();
      
      var rotation:Number = 0;
      var p1:Point = _point1;
      var p2:Point = _point2;
  
      var beta:Number = Math.atan2(Math.abs(p1.y - p2.y), Math.abs(p1.x - p2.x));
   
      if ((p2.x >= p1.x) && (p2.y <= p1.y))
        rotation = Math.PI - beta;

      if ((p2.x < p1.x) && (p2.y <= p1.y))
        rotation = beta;
  
      if ((p2.x < p1.x) && (p2.y > p1.y))
        rotation = Math.PI - beta;
  
      if ((p2.x >= p1.x) && (p2.y >= p1.y))
        rotation = beta;
  
      matrix.createGradientBox(_dashLen, _spaceLen, rotation, _point1.x, _point1.y);     
      
      _target.graphics.lineGradientStyle(GradientType.LINEAR, colors, alphas, ratios, Matrix(matrix), 
        SpreadMethod.REPEAT, InterpolationMethod.LINEAR_RGB, .9);
      
      _target.graphics.moveTo(_point1.x, _point1.y);
      _target.graphics.lineTo(_point2.x, _point2.y); 
    }
    
    
    

  }
}