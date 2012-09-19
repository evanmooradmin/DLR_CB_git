
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;
import mx.skins.halo.DefaultDragImage;

[ExcludeClass]

public class _DragManagerStyle
{
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='653', symbol='mx.skins.cursor.DragLink')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_DragLink_1446036826:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='655', symbol='mx.skins.cursor.DragReject')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_DragReject_247066353:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='651', symbol='mx.skins.cursor.DragCopy')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1445774805:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='654', symbol='mx.skins.cursor.DragMove')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_DragMove_1445994865:Class;

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("DragManager");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("DragManager", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.rejectCursor = _embed_css_Assets_swf_mx_skins_cursor_DragReject_247066353;
                this.defaultDragImageSkin = mx.skins.halo.DefaultDragImage;
                this.moveCursor = _embed_css_Assets_swf_mx_skins_cursor_DragMove_1445994865;
                this.copyCursor = _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1445774805;
                this.linkCursor = _embed_css_Assets_swf_mx_skins_cursor_DragLink_1446036826;
            };
        }
    }
}

}
