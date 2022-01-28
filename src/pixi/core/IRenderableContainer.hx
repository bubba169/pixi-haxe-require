package pixi.core;

import pixi.math.shapes.Rectangle;

@:jsRequire('./pixi.js', 'IRenderableContainer')
extern interface IRenderableContainer extends IRenderableObject
{
    function getLocalBounds(?rect:Rectangle, ?skipChildrenUpdate:Bool):Rectangle;
}