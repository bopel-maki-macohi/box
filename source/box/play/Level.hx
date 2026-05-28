package box.play;

import flixel.text.FlxText;
import box.play.objects.Box;
import flixel.util.FlxColor;
import flixel.FlxState;

class Level extends FlxState
{
	override public function new()
	{
		super();

		if (!Levels.list.contains(this))
			Levels.list.push(this);
	}

	var level:Int = 0;

	override function create()
	{
		super.create();

		makeLevelText();
	}

	function makeLevelText()
	{
		var lvlText:FlxText = new FlxText(0, 0, 0, '$level', 16);
		lvlText.screenCenter();
		lvlText.color = FlxColor.WHITE;
		lvlText.alpha = .25;
		add(lvlText);
	}

	public function makeBox(size:Int, color:FlxColor):Box
		return new Box(size, color);
}
