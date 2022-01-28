package pixi.sprite;

import pixi.math.ObservablePoint;
import pixi.core.textures.Texture;
import pixi.display.Container;

/**
 * The Sprite object is the base for all textured objects that are rendered to the screen
 * 
 * A sprite can be created directly from an image like this:
 * 
 * ```haxe
 * var sprite Sprite = Sprite.from('assets/image.png');
 * ```
 * 
 * The more efficient way to create sprites is using a PIXI.Spritesheet, as swapping base textures when rendering to the screen is inefficient.
 * 
 * ```haxe
 * Loader.shared.add("assets/spritesheet.json").load(setup);
 * 
 * function setup() {
 *     sheet = Loader.shared.resources["assets/spritesheet.json"].spritesheet;
 *     sprite = new Sprite(sheet.textures["image.png"]);
 *     //...
 * }
 * ```
 */
@:jsRequire('./pixi.js', 'Sprite')
extern class Sprite extends Container
{
    /**
     * The anchor sets the origin point of the sprite. The default value is taken from the Texture and passed to the constructor.
     * 
     * The default is (0,0), this means the sprite's origin is the top left.
     * 
     * Setting the anchor to (0.5,0.5) means the sprite's origin is centered.
     * 
     * Setting the anchor to (1,1) would mean the sprite's origin point will be the bottom right corner.
     * 
     * If you pass only single parameter, it will set both x and y to the same value as shown in the example below.
     * 
     * Example
     * ```haxe
     * sprite = new Sprite(texture);
     * sprite.anchor.set(0.5); // This will set the origin to center. (0.5) is same as (0.5, 0.5).
     * ```
     */
    var anchor:ObservablePoint;

    /**
     * Constructor
     * @param texture The texture for this sprite.
     */
    function new(texture:Texture);
}