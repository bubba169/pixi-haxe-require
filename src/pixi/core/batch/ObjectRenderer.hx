package pixi.core.batch;

import pixi.display.DisplayObject;

@:jsRequire('./pixi.js', 'ObjectRenderer')
extern class ObjectRenderer implements ISystem
{
    private var renderer:Renderer;

    function destroy():Void;
    function flush():Void;
    function render(object:DisplayObject):Void;
    function start():Void;
    function stop():Void;
}