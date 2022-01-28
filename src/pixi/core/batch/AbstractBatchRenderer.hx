package pixi.core.batch;

@:jsRequire('./pixi.js', 'AbstractBatchRenderer')
extern class AbstractBatchRenderer extends ObjectRenderer
{
    static var _drawCallPool : Array<BatchDrawCall>; 
    static var _textureArrayPool : Array<BatchTextureArray>;
    
    var MAX_TEXTURES(default, null):Int;
    
    function new(renderer:Renderer);
}