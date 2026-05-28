package box.play.levels;

import flixel.FlxG;
import flixel.util.FlxColor;
import box.play.objects.Box;

class LevelFour extends Level
{
	var box = new Box(32, FlxColor.RED);

	override function create()
	{
		level = 4;

		box.screenCenter();
		add(box);
		box.onClick.add(onBoxClick);
		box.ID = -1;

		onBoxClick();

		super.create();
	}

	function onBoxClick()
	{
		box.ID++;

		if (box.ID > 14)
		{
			FlxG.stage.window.alert('done)');
			Sys.exit(0);
			return;
		}

		box.scale.set(4 / (box.ID + 1), 4 / (box.ID + 1));
		box.updateHitbox();

		box.screenCenter();

		box.x += FlxG.random.float(-30, 30) * box.ID + 2;
		box.y += FlxG.random.float(-30, 30) * box.ID + 1;

		if (box.x < box.width)
			box.x = box.width;
		if (box.x > FlxG.width - box.width)
			box.x = FlxG.width - box.width;

		if (box.y < box.height)
			box.y = box.height;
		if (box.y > FlxG.height - (box.height * 1.01))
			box.y = FlxG.height - (box.height * 1.01);
	}
}
