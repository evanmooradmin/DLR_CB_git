
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;

[ExcludeClass]

public class _macMinButtonStyle
{
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_min_down.png', original='mac_min_down.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_min_down.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='124')]
    private static var _embed_css_mac_min_down_png_1832542983:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_min_up.png', original='mac_min_up.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_min_up.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='126')]
    private static var _embed_css_mac_min_up_png_1218211911:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_min_dis.png', original='mac_min_dis.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_min_dis.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='123')]
    private static var _embed_css_mac_min_dis_png_1158873185:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_min_over.png', original='mac_min_over.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_min_over.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='125')]
    private static var _embed_css_mac_min_over_png_450900633:Class;

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration(".macMinButton");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".macMinButton", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_mac_min_up_png_1218211911;
                this.overSkin = _embed_css_mac_min_over_png_450900633;
                this.downSkin = _embed_css_mac_min_down_png_1832542983;
                this.disabledSkin = _embed_css_mac_min_dis_png_1158873185;
                this.alpha = 0.5;
            };
        }
    }
}

}
