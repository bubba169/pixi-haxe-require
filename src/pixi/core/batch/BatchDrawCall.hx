package pixi.core.batch;

import pixi.Pixi.BLEND_MODES;
import pixi.Pixi.DRAW_MODES;

@:jsRequire('./pixi.js', 'BatchDrawCall')
extern class BatchDrawCall
{
    var texArray:BatchTextureArray;
    var type:DRAW_MODES;
    var blend:BLEND_MODES;
    var start:Int;
    var size:Int;
    var data:Dynamic;
}