package pixi.core.batch;

@:jsRequire('./pixi.js', 'BatchShaderGenerator')
extern class BatchShaderGenerator
{
    var fragTemplate:String;
    var vertexSrc:String;

    function new(vertexSrc:String, fragTemplate:String);
}