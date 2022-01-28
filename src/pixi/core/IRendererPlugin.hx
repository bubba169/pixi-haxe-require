package pixi.core;

@:jsRequire('./pixi.js', 'IRendererPlugin')
extern interface IRendererPlugin 
{
	function destroy():Void;
}
