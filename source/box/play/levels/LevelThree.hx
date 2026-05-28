package box.play.levels;

import flixel.FlxG;
import flixel.util.FlxColor;
import box.play.objects.Box;

class LevelThree extends Level
{
	var box = new Box(64, FlxColor.RED);

	override function create()
	{
		level = 3;

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

		if (box.ID > 9)
		{
			FlxG.switchState(() -> new LevelFour());
			return;
		}

		box.scale.set(2 / (box.ID + 1), 2 / (box.ID + 1));

		box.screenCenter();

		box.x += FlxG.random.float(-25, 25) * box.ID + 1;
		box.y += FlxG.random.float(-25, 25) * box.ID + 0;

		if (box.x < box.width * 1.5)
			box.x = box.width * 1.5;
		if (box.x > FlxG.width - box.width * 1.5)
			box.x = FlxG.width - box.width * 1.5;

		if (box.y < box.height * 1.5)
			box.y = box.height * 1.5;
		if (box.y > FlxG.height - box.height * 1.5)
			box.y = FlxG.height - box.height * 1.5;
	}
}
