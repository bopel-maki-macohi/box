package box.play.levels;

import flixel.FlxG;
import flixel.util.FlxColor;

class LevelOne extends Level
{
	override function create()
	{
		level = 1;

		var box = makeBox(256, FlxColor.RED);
		box.screenCenter();
		add(box);

		box.onClick.add(function()
		{
			FlxG.switchState(() -> new LevelTwo());
		});

		super.create();
	}
}
