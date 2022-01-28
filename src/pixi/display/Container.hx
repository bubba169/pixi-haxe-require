package pixi.display;

/**
 * Container is a general-purpose display object that holds children. It also adds built-in support for 
 * advanced rendering features like masking and filtering.
 * 
 * It is the base class of all display objects that act as a container for other objects, including 
 * Graphics and Sprite.
 */
@:jsRequire('./pixi.js', 'Container')
extern class Container extends DisplayObject
{
    /**
     * The height of the Container, setting this will actually modify the scale to achieve the value set
     */
    var height:Float;

    /**
     * The width of the Container, setting this will actually modify the scale to achieve the value set
     */
    var width:Float;

    public function new();

    /**
     * Adds one or more children to the container. 
     * 
     * Multiple items can be added like so: myContainer.addChild(thingOne, thingTwo, thingThree)
     * 
     * @param children The DisplayObject(s) to add to the container 
     * @return The first child that was added.
     */
    public function addChild(...children:DisplayObject):DisplayObject;
}