package pixi.core.batch;

import pixi.core.textures.BaseTexture;

@:jsRequire('./pixi.js', 'BatchTextureArray')
extern class BatchTextureArray
{
    var elements:Array<BaseTexture>;
    var ids:Array<Int>;
    var count:Int;

    function new();

    function clear():Void;
}