package pixi;

@:jsRequire('./pixi.js')
extern class Pixi
{
    
}

enum abstract BLEND_MODES(Int) {
    var NORMAL = 0;
    var ADD = 1;
    var MULTIPLY = 2;
    var SCREEN = 3;
    var OVERLAY = 4;
    var DARKEN = 5;
    var LIGHTEN = 6;
    var COLOR_DODGE = 7;
    var COLOR_BURN = 8;
    var HARD_LIGHT = 9;
    var SOFT_LIGHT = 10;
    var DIFFERENCE = 11;
    var EXCLUSION = 12;
    var HUE = 13;
    var SATURATION = 14;
    var COLOR = 15;
    var LUMINOSITY = 16;
    var NORMAL_NPM = 17;
    var ADD_NPM = 18;
    var SCREEN_NPM = 19;
    var NONE = 20;

    var SRC_OVER = 0;
    var SRC_IN = 21;
    var SRC_OUT = 22;
    var SRC_ATOP = 23;
    var DST_OVER = 24;
    var DST_IN = 25;
    var DST_OUT = 26;
    var DST_ATOP = 27;
    var ERASE = 26;
    var SUBTRACT = 28;
    var XOR = 29;
}

enum DRAW_MODES {
    POINTS;
    LINES;
    LINE_LOOP;
    LINE_STRIP;
    TRIANGLES;
    TRIANGLE_STRIP;
    TRIANGLE_FAN;
}

enum abstract MSAA_QUALITY(Int) {
    var NONE = 0;
    var LOW = 2;
    var MEDIUM = 4;
    var HIGH = 8;
}

enum RENDERER_TYPE {
    UNKNOWN;
    WEBGL;
    CANVAS;
}

enum SCALE_MODES {
    NEAREST;
    LINEAR;
}