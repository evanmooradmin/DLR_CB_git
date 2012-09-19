
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;

[ExcludeClass]

public class _gripperSkinStyle
{
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$gripper_up.png', original='gripper_up.png', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$gripper_up.png', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/air/airframework.swc$defaults.css', _line='70')]
    private static var _embed_css_gripper_up_png_680062983:Class;

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration(".gripperSkin");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".gripperSkin", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_gripper_up_png_680062983;
                this.overSkin = _embed_css_gripper_up_png_680062983;
                this.downSkin = _embed_css_gripper_up_png_680062983;
            };
        }
    }
}

}
