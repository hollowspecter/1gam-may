package de.blogspot.hollowspecter.main;

import com.haxepunk.Engine;
import com.haxepunk.HXP;

/**
 * ...
 * @author Vivien Baguio
 */

class Main extends Engine 
{

	public static inline var kScreenWidth:Int = 960;
	public static inline var kScreenHeight:Int = 640;
	public static inline var kFrameRate:Int = 30;
	public static inline var kClearColor:Int = 0x7FFF9B;
	public static inline var kProjectName:String = "Triforce Puzzle!";

	function new()
	{
		super(kScreenWidth, kScreenHeight, kFrameRate, false);	
	}
	
	override public function init()
	{
#if debug
	#if flash
		if (flash.system.Capabilities.isDebugger)
	#end
		{
			HXP.console.enable();
		}
#end
		HXP.screen.color = kClearColor;
		HXP.screen.scale = 1;
		HXP.world = new LevelWorld();
	}

	public static function main()
	{
		var app = new Main();
	}
}