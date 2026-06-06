import flixel.FlxSprite;

class MentalSprite extends FlxSprite
{
	override public function new(?x:Float = 0, ?y:Float = 0)
	{
		super(x, y);

		loadGraphic('assets/tileset.png', true, 16, 16);
	}

	public function addAnim(name:String, frames:Array<Int>, ?fps = 4, ?looped = true)
	{
		animation.add(name, frames, fps, looped);
		animation.play(name);
	}
}
