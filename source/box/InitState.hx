package box;

import flixel.FlxG;
import box.play.levels.*;
import box.play.*;
import flixel.FlxState;

class InitState extends FlxState
{
	override public function create()
	{
		super.create();

		makeLevels();

		FlxG.switchState(() -> Levels.list[0]);
	}

	function makeLevels()
	{
		new LevelOne();
		new LevelTwo();
		new LevelThree();
	}
}
