package pixi.core.textures;

import pixi.utils.EventEmitter;

/**
 * A texture stores the information that represents an image or part of an image. 
 * 
 * It cannot be added to the display list directly; instead use it as the texture for a Sprite. If no frame is provided for a texture, then the whole image is used.
 * 
 * You can directly create a texture from an image and then reuse it multiple times like this :
 * 
 * ```haxe
 * texture = Texture.from('assets/image.png');
 * sprite1 = new Sprite(texture);
 * sprite2 = new Sprite(texture);
 * ```
 * 
 * If you didnt pass the texture frame to constructor, it enables noFrame mode: it subscribes on 
 * baseTexture events, it automatically resizes at the same time as baseTexture.
 *
 * Textures made from SVGs, loaded or not, cannot be used before the file finishes processing. You can check for this by checking the sprite's _textureID property.
 * 
 * ```haxe
 * texture = Texture.from('assets/image.svg');
 * sprite1 = new Sprite(texture);
 * //sprite1._textureID should not be undefined if the texture has finished processing the SVG file
 * ```
 * 
 * You can use a ticker or rAF to ensure your sprites load the finished textures after processing. See issue #3068.
 */
@:jsRequire('./pixi.js', 'Texture')
extern class Texture extends EventEmitter
{
    static function from(source:Dynamic, ?options:Dynamic, ?strict:Bool): Texture;
}