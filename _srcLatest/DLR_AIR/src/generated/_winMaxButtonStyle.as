
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;

[ExcludeClass]

public class _winMaxButtonStyle
{
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_max_dis.png', original='win_max_dis.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_max_dis.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='249')]
    private static var _embed_css_win_max_dis_png_1763074017:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_max_up.png', original='win_max_up.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_max_up.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='246')]
    private static var _embed_css_win_max_up_png_1466752953:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_max_over.png', original='win_max_over.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_max_over.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='247')]
    private static var _embed_css_win_max_over_png_1948935527:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_max_down.png', original='win_max_down.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$win_max_down.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='248')]
    private static var _embed_css_win_max_down_png_1677245049:Class;

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration(".winMaxButton");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".winMaxButton", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_max_up_png_1466752953;
                this.downSkin = _embed_css_win_max_down_png_1677245049;
                this.overSkin = _embed_css_win_max_over_png_1948935527;
                this.disabledSkin = _embed_css_win_max_dis_png_1763074017;
            };
        }
    }
}

}
