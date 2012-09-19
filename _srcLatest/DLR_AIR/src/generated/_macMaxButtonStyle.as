
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;

[ExcludeClass]

public class _macMaxButtonStyle
{
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_max_down.png', original='mac_max_down.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_max_down.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='109')]
    private static var _embed_css_mac_max_down_png_2107902279:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_max_dis.png', original='mac_max_dis.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_max_dis.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='108')]
    private static var _embed_css_mac_max_dis_png_1451872549:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_max_up.png', original='mac_max_up.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_max_up.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='111')]
    private static var _embed_css_mac_max_up_png_410205177:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_max_over.png', original='mac_max_over.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$mac_max_over.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='110')]
    private static var _embed_css_mac_max_over_png_1266195513:Class;

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration(".macMaxButton");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".macMaxButton", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_mac_max_up_png_410205177;
                this.overSkin = _embed_css_mac_max_over_png_1266195513;
                this.downSkin = _embed_css_mac_max_down_png_2107902279;
                this.disabledSkin = _embed_css_mac_max_dis_png_1451872549;
            };
        }
    }
}

}
