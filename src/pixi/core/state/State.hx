package pixi.core.state;

import pixi.Pixi.BLEND_MODES;

@:jsRequire('./pixi.js', 'State')
extern class State
{
    var blend:Bool;
    var blendMode:BLEND_MODES;
    var clockwiseFrontFace:Bool;
    var culling:Bool;
    var depthMask:Bool;
    var depthTest:Bool;
    var offsets:Bool;
    var polygonOffset:Int;

    function new();
}