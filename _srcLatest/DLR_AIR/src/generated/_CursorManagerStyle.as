
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;
import mx.skins.halo.BusyCursor;

[ExcludeClass]

public class _CursorManagerStyle
{
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='509', symbol='mx.skins.cursor.BusyCursor')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_BusyCursor_993508667:Class;

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("CursorManager");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("CursorManager", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.busyCursor = mx.skins.halo.BusyCursor;
                this.busyCursorBackground = _embed_css_Assets_swf_mx_skins_cursor_BusyCursor_993508667;
            };
        }
    }
}

}
