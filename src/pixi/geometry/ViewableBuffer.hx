package pixi.geometry;

import js.lib.Uint8Array;
import js.lib.Uint32Array;
import js.lib.Uint16Array;
import js.lib.ArrayBuffer;
import js.lib.Int8Array;
import js.lib.Int32Array;
import js.lib.Int16Array;
import js.lib.Float32Array;

@:jsRequire('./pixi.js', 'ViewableBuffer')
extern class ViewableBuffer
{
    var float32View:Float32Array;
    var int16View:Int16Array;
    var int32View:Int32Array;
    var int8View:Int8Array;
    var rawBinaryData:ArrayBuffer;
    var uint16View:Uint16Array;
    var uint32View:Uint32Array;
    var uint8View:Uint8Array;

    function new(length:Int);

    function destroy():Void;
    function view(type:String):Dynamic;
}