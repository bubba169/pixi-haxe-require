package pixi.app;

import pixi.ticker.Ticker;
import pixi.math.shapes.Rectangle;
import pixi.display.Container;
import js.html.CanvasElement;

/**
 * Convenience class to create a new PIXI application.
 * 
 * This class automatically creates the renderer, ticker and root container.
 */
@:jsRequire('./pixi.js', 'Application')
extern class Application {
    /**
     * Reference to the renderer's canvas element.
     */
    var view(default, null):CanvasElement;

    /**
     * The root display container that's rendered.
     */
    var stage:Container;

    /**
     * Reference to the renderer's screen rectangle. Its safe to use as filterArea or hitArea for the whole screen.
     */
    var screen(default, null):Rectangle;

    /**
     * Ticker for doing render updates.
     */
    var ticker:Ticker;

    /**
     * Constructor
     * 
     * @param options The optional renderer parameters.
     */
    public function new(options:IApplicationOptions);
}