package pixi.core;

@:jsRequire('./pixi.js', 'IRenderableObject')
extern interface IRenderableObject
{
    var parent:IRenderableContainer;

    function disableTempParent(parent:IRenderableContainer):Void;
    function enableTempParent():IRenderableContainer;
    function render(renderer:Renderer):Void;
    function updateTransform():Void;
}