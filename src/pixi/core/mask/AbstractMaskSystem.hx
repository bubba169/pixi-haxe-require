package pixi.core.mask;

@:jsRequire('./pixi.js', 'AbstractMaskSystem')
extern class AbstractMaskSystem implements ISystem
{
    var maskStack:Array<MaskData>;

    function new(renderer:Renderer);

    function destroy():Void;
    function getStackLength():Int;
    function setMaskStack(maskStack:Array<MaskData>):Void;
}