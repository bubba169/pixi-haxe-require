package pixi.display;

import pixi.math.ObservablePoint;

@:jsRequire('./pixi.js', 'DisplayObject')
extern class DisplayObject {
    /**
     * The center of rotation, scaling, and skewing for this display object in its local space. 
     * The position is the projection of pivot in the parent's local space.
     * 
     * By default, the pivot is the origin (0, 0).
     */
    var pivot:ObservablePoint;

    /**
     * The rotation of the object in radians. 'rotation' and 'angle' have the same effect on a display object; 
     * rotation is in radians, angle is in degrees.
     */
    var rotation:Float;

    /**
     * The position of the displayObject on the x axis relative to the local coordinates of the parent. 
     * An alias to position.x
     */
    var x:Float;

    /**
     * The position of the displayObject on the y axis relative to the local coordinates of the parent.
     * An alias to position.y
     */
    var y:Float;
}