package pixi.app;

import js.html.Element;
import js.html.Window;
import haxe.extern.EitherType;
import js.html.CanvasElement;

typedef IApplicationOptions = {
    /**
     * Automatically starts the rendering after the construction. Note: Setting this parameter to false 
     * does NOT stop the shared ticker even if you set options.sharedTicker to true in case that it is 
     * already started. Stop it by your own.
     * 
     * @default true
     */
    ?autoStart:Bool,

    /**
     * The width of the screen.
     * 
     * @default 800
     */
    ?width: Int,

    /**
     * The height of the screen.
     * 
     * @default 600
     */
    ?height: Int,

    /**
     * The canvas to use as a view, 
     */
    ?view : CanvasElement,

    /**
     * Pass-through value for canvas' context alpha property. If you want to set transparency, please use backgroundAlpha. 
     * This option is for cases where the canvas needs to be opaque, possibly for performance reasons on some older devices.
     * 
     * @default true
     */
    ?useContextAlpha:Bool,

    /**
     * Resizes renderer view in CSS pixels to allow for resolutions other than 1.
     * 
     * @default false
     */
    ?autoDensity:Bool,

    /**
     * Sets antialias. If not available natively then FXAA antialiasing is used.
     * 
     * @default false
     */
    ?antialias:Bool,

    /**
     * Enables drawing buffer preservation, enable this if you need to call toDataUrl on the WebGL context.
     * 
     * @default false
     */
    ?preserveDrawingBuffer:Bool,

    /**
     * The resolution / device pixel ratio of the renderer.
     * 
     * @default Pixi.settings.RESOLUTION
     */
    ?resolution:Float,

    /**
     * prevents selection of WebGL renderer, even if such is present, this option only is available 
     * when using pixi.js-legacy or @pixi/canvas-renderer modules, otherwise it is ignored.
     * 
     * @default false
     */
    ?forceCanvas:Bool,

    /**
     * The background color of the rendered area (shown if not transparent).
     * 
     * @default 0x000000
     */
    ?backgroundColor:Int,

    /**
     * Value from 0 (fully transparent) to 1 (fully opaque).
     * 
     * @default 1
     */
    ?backgroundAlpha:Float,

    /**
     * This sets if the renderer will clear the canvas or not before the new render pass. 
     * If you wish to set this to false, you must set preserveDrawingBuffer to true.
     * 
     * @default true
     */
    ?clearBeforeRender:Bool,

    /**
     * Parameter passed to WebGL context, set to "high-performance" for devices with dual graphics card.
     */
    ?powerPreference:String,

    /**
     * true to use PIXI.Ticker.shared, false to create new ticker. If set to false, you cannot register
     * a handler to occur before anything that runs on the shared ticker. The system ticker will always 
     * run before both the shared ticker and the app ticker.
     * 
     * @default false
     */
    ?sharedTicker:Bool,

    /**
     * true to use PIXI.Loader.shared, false to create new Loader.
     * 
     * @default false
     */
    ?sharedLoader:Bool,

    /**
     * Element to automatically resize stage to.
     */
    ?resizeTo:EitherType<Window,Element>,
}