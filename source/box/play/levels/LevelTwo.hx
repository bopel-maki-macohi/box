package box.play.levels;

import flixel.FlxG;
import flixel.util.FlxColor;
import box.play.objects.Box;

class LevelTwo extends Level
{
	var box = new Box(128, FlxColor.RED);

	override function create()
	{
		level = 2;

		box.screenCenter();
		add(box);
		box.onClick.add(onBoxClick);
		box.ID = 0;

		super.create();
	}

	function onBoxClick()
	{
		box.ID++;

		if (box.ID > 4)
		{
			FlxG.switchState(() -> new LevelThree());
			return;
		}

		box.screenCenter();

		box.x += FlxG.random.float(-20, 20) * box.ID;
		box.y += FlxG.random.float(-20, 20) * box.ID - 1;

		if (box.x < box.width * 2)
			box.x = box.width * 2;
		if (box.x > FlxG.width - box.width * 2)
			box.x = FlxG.width - box.width * 2;

		if (box.y < box.height * 2)
			box.y = box.height * 2;
		if (box.y > FlxG.height - box.height * 2)
			box.y = FlxG.height - box.height * 2;
	}
}
