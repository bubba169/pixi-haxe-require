package pixi.core.shader;

import haxe.DynamicAccess;

@:jsRequire('./pixi.js', 'Program')
extern class Program
{
    static var defaultFragmentSrc:String;
    static var defaultVertexSrc:String;

    var attributeData:DynamicAccess<AttributeData>;
    var fragmentSrc:String;
    var uniformData:DynamicAccess<UniformData>;
    var vertexSrc:String;

    function new (?vertexSrc:String, ?fragmentSrc:String, name:String='pixi-shader');

    static function from(?vertexSrc:String, ?fragmentSrc:String, ?name:String):Program;
}

typedef AttributeData = {
    type:String,
    size:Int,
    location:Int,
    name:String
}

typedef UniformData = {
    index:Int,
    type:String,
    size:Int,
    isArray:Bool,
    value:Any,
    name:String
}