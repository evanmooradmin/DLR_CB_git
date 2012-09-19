
package 
{

import flash.display.Sprite;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSStyleDeclaration;
import mx.styles.StyleManager;
import mx.skins.halo.ListDropIndicator;

[ExcludeClass]

public class _MenuStyle
{
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='969', symbol='MenuRadioEnabled')]
    private static var _embed_css_Assets_swf_MenuRadioEnabled_1788242156:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='958', symbol='MenuCheckDisabled')]
    private static var _embed_css_Assets_swf_MenuCheckDisabled_1967563924:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='956', symbol='MenuBranchDisabled')]
    private static var _embed_css_Assets_swf_MenuBranchDisabled_308699508:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='959', symbol='MenuCheckEnabled')]
    private static var _embed_css_Assets_swf_MenuCheckEnabled_392906999:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='957', symbol='MenuBranchEnabled')]
    private static var _embed_css_Assets_swf_MenuBranchEnabled_1714146559:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='970', symbol='MenuRadioDisabled')]
    private static var _embed_css_Assets_swf_MenuRadioDisabled_923861207:Class;
    [Embed(_pathsep='true', _resolvedSource='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', source='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$Assets.swf', _file='C:/Program Files/Adobe/Flex Builder 3/sdks/3.4.0.6955/frameworks/libs/framework.swc$defaults.css', _line='971', symbol='MenuSeparator')]
    private static var _embed_css_Assets_swf_MenuSeparator_742771499:Class;

    public static function init(fbs:IFlexModuleFactory):void
    {
        var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("Menu");
    
        if (!style)
        {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Menu", style, false);
        }
    
        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.branchDisabledIcon = _embed_css_Assets_swf_MenuBranchDisabled_308699508;
                this.paddingLeft = 1;
                this.checkIcon = _embed_css_Assets_swf_MenuCheckEnabled_392906999;
                this.dropShadowEnabled = true;
                this.checkDisabledIcon = _embed_css_Assets_swf_MenuCheckDisabled_1967563924;
                this.radioIcon = _embed_css_Assets_swf_MenuRadioEnabled_1788242156;
                this.radioDisabledIcon = _embed_css_Assets_swf_MenuRadioDisabled_923861207;
                this.borderStyle = "menuBorder";
                this.paddingBottom = 1;
                this.rightIconGap = 15;
                this.paddingTop = 1;
                this.dropIndicatorSkin = mx.skins.halo.ListDropIndicator;
                this.paddingRight = 0;
                this.verticalAlign = "middle";
                this.separatorSkin = _embed_css_Assets_swf_MenuSeparator_742771499;
                this.branchIcon = _embed_css_Assets_swf_MenuBranchEnabled_1714146559;
                this.leftIconGap = 18;
                this.horizontalGap = 6;
            };
        }
    }
}

}
