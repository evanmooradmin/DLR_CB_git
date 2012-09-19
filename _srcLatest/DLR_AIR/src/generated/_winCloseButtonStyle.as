
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;

[ExcludeClass]

public class _winCloseButtonStyle
{
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_close_up.png', original='win_close_up.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_close_up.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='165')]
    private static var _embed_css_win_close_up_png_2146362951:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_close_over.png', original='win_close_over.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_close_over.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='164')]
    private static var _embed_css_win_close_over_png_1907001977:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_close_down.png', original='win_close_down.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_close_down.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='163')]
    private static var _embed_css_win_close_down_png_1072832951:Class;

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration(".winCloseButton");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".winCloseButton", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_close_up_png_2146362951;
                this.overSkin = _embed_css_win_close_over_png_1907001977;
                this.downSkin = _embed_css_win_close_down_png_1072832951;
            };
        }
    }
}

}
