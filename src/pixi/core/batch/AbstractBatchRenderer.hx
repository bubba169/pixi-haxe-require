package pixi.core.batch;

import pixi.core.shader.Shader;
import pixi.core.shader.Program;
import js.lib.Uint16Array;
import pixi.display.DisplayObject;
import pixi.core.textures.BaseTexture;
import pixi.geometry.ViewableBuffer;
import pixi.core.state.State;

@:jsRequire('./pixi.js', 'AbstractBatchRenderer')
extern class AbstractBatchRenderer extends ObjectRenderer
{
    static var _drawCallPool : Array<BatchDrawCall>; 
    static var _textureArrayPool : Array<BatchTextureArray>;
    
    var MAX_TEXTURES(default, null):Int;
    var size:Int;
    var state(default,null):State;

    private var _aBuffers:Array<ViewableBuffer>;
    private var _bufferedElements:Array<DisplayObject>;
    private var _bufferedTextures:Array<BaseTexture>;
    private var _bufferSize:Int;
    private var _flushId:Int;
    private var _iBuffers:Array<Uint16Array>;
    private var _indexCount:Int;
    private var _shader:Shader;
    private var _vertexCount:Int;
    private var geometryClass:Class<Any>;
    private var shaderGenerator:BatchShaderGenerator;
    private var vertexSize(default, null):Int;
    
    function new(renderer:Renderer);

    function bindAndClearTexArray(texArray:BatchTextureArray):Void;
    function buildDrawCalls(texArray:BatchTextureArray, start:Int, end:Int):Void;
    function contextChange():Void;
    function getAttributeBuffer(size:Int):ViewableBuffer;
    function getIndexBuffer(size:Int):Uint16Array;
    function initFlushBuffers():Void;
    function onPrerender():Void;
    function packInterleavedGeometry(element:DisplayObject, attributeBuffer:ViewableBuffer, indexBuffer:Uint16Array, aIndex:Int, iIndex:Int):Void;
    
}