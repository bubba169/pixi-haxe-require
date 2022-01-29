package pixi.core.shader;

@:jsRequire('./pixi.js', 'Shader')
extern class Shader
{
    var program:Program;
    var uniforms(default, null):Dynamic;

    function new (program:Program, ?uniforms:Dynamic);

    static function from(?vertexSrc:String, ?fragmentSrc:String, ?uniforms:Dynamic):Shader;
}