package pixi.math;

@:jsRequire('./pixi.js', 'ObservablePoint')
extern class ObservablePoint {
    /**
     * Position of the observable point on the x axis.
     */
    var x:Float;

    /**
     * Position of the observable point on the y axis.
     */
    var y:Float;

    /**
     * Sets the point to a new x and y position. If y is omitted, both x and y will be set to x.
     * @param x position of the point on the x axis
     * @param y position of the point on the y axis
     * @return this
     */
    function set(x:Float = 0, ?y:Float):ObservablePoint;
}