package box.play.objects;

import flixel.FlxG;
import flixel.util.FlxSignal;
import flixel.util.FlxColor;
import flixel.FlxSprite;

class Box extends FlxSprite
{
	override public function new(size:Int, color:FlxColor)
	{
		super();

		makeGraphic(size, size, color);
	}

	public var onClick:FlxSignal = new FlxSignal();

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.mouse.overlaps(this) && FlxG.mouse.justPressed)
			onClick.dispatch();
	}
}
