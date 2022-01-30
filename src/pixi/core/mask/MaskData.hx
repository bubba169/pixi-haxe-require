package pixi.core.mask;

import pixi.Pixi.MASK_TYPES;
import pixi.Pixi.MSAA_QUALITY;
import pixi.display.DisplayObject;
import pixi.core.filters.spriteMask.SpriteMaskFilter;
import pixi.math.shapes.Rectangle;

@:jsRequire('./pixi.js', 'MaskData')
extern class MaskData
{
    var _scissorRect:Rectangle;
    var _scissorRectLocal:Rectangle;
    var autoDetect:Bool;
    var enabled:Bool;
    var filter:SpriteMaskFilter;
    var isMaskData:Bool;
    var maskObject:DisplayObject;
    var multisample:MSAA_QUALITY;
    var pooled:Bool;
    var resolution:Float;
    var type:MASK_TYPES;

    function new (maskObject:DisplayObject = null);

    function copyCountersOrReset(maskAbove:MaskData):Void;
    function reset():Void;
}