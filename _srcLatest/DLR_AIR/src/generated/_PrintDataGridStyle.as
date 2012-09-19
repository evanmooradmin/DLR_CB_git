
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;
import mx.skins.halo.DataGridSortArrow;
import mx.skins.halo.DataGridHeaderSeparator;
import mx.skins.halo.DataGridColumnResizeSkin;

[ExcludeClass]

public class _PrintDataGridStyle
{
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='1157', symbol='cursorStretch')]
    private static var _embed_css_Assets_swf_cursorStretch_1374893506:Class;

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("PrintDataGrid");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("PrintDataGrid", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.horizontalGridLines = true;
                this.headerSeparatorSkin = mx.skins.halo.DataGridHeaderSeparator;
                this.borderColor = 0;
                this.horizontalGridLineColor = 0;
                this.stretchCursor = _embed_css_Assets_swf_cursorStretch_1374893506;
                this.sortArrowSkin = mx.skins.halo.DataGridSortArrow;
                this.verticalGridLineColor = 0x000000;
                this.headerColors = [0xffffff, 0xffffff];
                this.alternatingItemColors = [0xffffff, 0xffffff];
                this.columnResizeSkin = mx.skins.halo.DataGridColumnResizeSkin;
                this.headerStyleName = "dataGridStyles";
            };
        }
    }
}

}
