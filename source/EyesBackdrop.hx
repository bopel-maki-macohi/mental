import flixel.addons.display.FlxBackdrop;
import flixel.FlxState;

class EyesBackdrop extends FlxState
{
	var eyes:FlxBackdrop;

	override public function create()
	{
		super.create();

		eyes = new FlxBackdrop('assets/tileset.png');
		eyes.loadGraphic('assets/tileset.png', true, 16, 16);
		eyes.animation.add('eyes', [0, 1, 2, 3, 4, 5], 4);
		eyes.animation.play('eyes');
		add(eyes);

		eyes.velocity.set(30, 30);
	}

	var time:Float = 0;

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		time += elapsed;

		eyes.scale.x = Math.sin(time * 5) * 11;
		eyes.scale.y = Math.sin(time * 8) * 21;

		// laggy
		// could use as like a crash scene
		// eyes.scale.x = Math.sin(time * 30) * 10;
		// eyes.scale.y = Math.sin(time * 15) * 20;
		eyes.updateHitbox();
	}
}
