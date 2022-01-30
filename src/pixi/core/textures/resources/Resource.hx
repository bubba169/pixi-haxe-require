package pixi.core.textures.resources;

@:jsRequire('./pixi.js', 'Resource')
extern class Resource
{
    var destroyed(default,null):Bool;
    var height(default,null):Int;
    var internal:Bool;
    var valid(default,null):Bool;
    var width(default,null):Int;

    private var _height:Int;
    private var _width:Int;

    function new (width:Int = 0, height:Int = 0);

    static function test(source:Dynamic, ?extension:String):Bool;

    function bind(baseTexture:BaseTexture):Void;
    function destroy():Void;
    function dispose():Void;
    function resize(width:Int, height:Int):Void;
    function style(renderer:Renderer, baseTexture:BaseTexture, glTexture:GLTexture):Bool;
    function unbind(baseTexture:BaseTexture):Void;
    function update():Void;
    function upload(renderer:Renderer, baseTexture:BaseTexture, glTexture:GLTexture):Bool;

    private function load():Resource;
}