package;

import lime.utils.Assets;
import openfl.utils.Assets as OpenFlAssets;

using StringTools;

class CoolUtil
{
	// DIFFICULTY NAME, JSON SUFFIX, FREEPLAY COLOR

	public static var difficultyArray:Array<Dynamic> = [
		['EASY', '-easy', 0xFF00FF00],
		['NORMAL', '', 0xFFFFFF00],
		['HARD', '-hard', 0xFFFF0000]
	];

	// SONG NAME, VIDEO PATH, STORY MODE CUTSCENE, FREEPLAY CUTSCENE

	public static var startCutsceneArray:Array<Dynamic> = [
		// ['tutorial', 'test', true, false]
	];

	// SONG NAME, VIDEO PATH, FREEPLAY CUTSCENE
	
	public static var endCutsceneArray:Array<Dynamic> = [
		// ['tutorial', 'test', false]
	];

	public static function coolTextFile(path:String):Array<String>
	{
		var daList:Array<String> = Assets.getText(path).trim().split('\n');

		if (daList == null)
			return daList;

		for (i in 0...daList.length)
		{
			daList[i] = daList[i].trim();
		}

		return daList;
	}
	
	
		public static function camLerpShit(daLerp:Float) 
			{
              return (FlxG.elapsed / 0.016666666666666666) * daLerp;
			}
	    
		


		public static function coolLerp(first:Float, second:Float, third:Float){
			return first + camLerpShit(third) * (second - first);
		}

	public static function numberArray(max:Int, ?min = 0):Array<Int>
	{
		var dumbArray:Array<Int> = [];

		for (i in min...max)
		{
			dumbArray.push(i);
		}
		
		return dumbArray;
	}
}
