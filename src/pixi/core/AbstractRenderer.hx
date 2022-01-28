package pixi.core;

import pixi.core.renderTexture.RenderTexture;
import pixi.Pixi.MSAA_QUALITY;
import pixi.Pixi.SCALE_MODES;
import pixi.display.DisplayObject;
import pixi.Pixi.RENDERER_TYPE;
import pixi.math.shapes.Rectangle;
import haxe.DynamicAccess;
import js.html.CanvasElement;
import pixi.utils.EventEmitter;

@:jsRequire('./pixi.js', 'Renderer')
extern class AbstractRenderer extends EventEmitter 
{
    var autoDensity:Bool;
    var backgroundAlpha:Float;
    var backgroundColor:Int;
    var clearBeforeRender:Bool;
    var height(default,null):Int;
    var options(default,null):RendererOptions;
    var plugins(default,null):DynamicAccess<IRendererPlugin>;
    var preserveDrawingBuffer:Bool;
    var resolution:Float;
    var screen:Rectangle;
    var type:RENDERER_TYPE;
    var useContextAlpha:Bool;
    var view:CanvasElement;
    var width(default,null):Int;

    private var _backgroundColor:Int;
    private var _backgroundColorRgba:Array<Int>;
    private var _backgroundColorString:String;
    private var _lastObjectRendered:DisplayObject;

    public function new(system:String, options:RendererOptions);

    public function destroy(removeView:Bool = false):Void;

    @:overload(function(displaObject:IRenderableObject, ?scaleMode:SCALE_MODES, ?resolution:Float, ?region:Rectangle):RenderTexture {}) 
    function generateTexture(displayObject:IRenderableObject, options:GenerateTextureOptions):RenderTexture;
    function resize(desiredScreenWidth:Int, desiredScreenHeight:Int):Void;

    private function initPlugins(staticMap:DynamicAccess<IRendererPlugin>):Void;
}

typedef RendererOptions = {
    ?width:Int,
    ?height:Int,
    ?view:CanvasElement,
    ?useContextAlpha:Bool,
    ?autoDensity:Bool,
    ?antialias:Bool,
    ?resolution:Float,
    ?preserveDrawingBuffer:Bool,
    ?clearBeforeRender:Bool,
    ?backgroundColor:Int,
    ?backgroundAlpha:Float,
}

typedef GenerateTextureOptions = {
    ?scaleMode:SCALE_MODES,
    ?resolution:Float,
    ?region:Rectangle,
    ?multisample:MSAA_QUALITY,
}