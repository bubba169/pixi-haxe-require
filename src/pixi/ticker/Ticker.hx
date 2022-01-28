package pixi.ticker;

/**
 * A Ticker class that runs an update loop that other objects listen to.
 * 
 * This class is composed around listeners meant for execution on the next requested animation frame. 
 * Animation frames are requested only when necessary, e.g. When the ticker is started and the emitter has listeners.
 */
@:jsRequire('./pixi.js', 'Ticker')
extern class Ticker
{
    /**
     * Register a handler for tick events. Calls continuously unless it is removed or the ticker is stopped.
     * @param fn The listener function to be added for updates
     * @param context The listener context
     * @param priority The priority for emitting
     * @return this
     */
    public function add(fn:Float->Void, ?context:Any, ?priority:Int):Ticker;
}