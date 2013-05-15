package de.blogspot.hollowspecter.main;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.graphics.Spritemap;
/**
 * ...
 * @author Vivien Baguio
 */
 
enum Color
{
	RED;
	BLUE;
	GREEN;
	GOLD;
}
 
class Marble extends Entity
{	
	private var color_ : Color;
	private var sprite : Spritemap;
	
	/**
	 * A new Marble
	 * @param	posX The x position
	 * @param	posY The y position
	 * @param	color RED, BLUE, GREEN, GOLD
	 */
	public function new(posX:Float, posY:Float, color:Color) 
	{
		super();
		
		//position sprite correctly
		x = posX;
		y = posY;
		
		//misc
		type = "marble";
		color_ = color;
		
		//Sprite and Image handling
		sprite = new Spritemap ("gfx/marbles.png", Constants.MARBLEWID, Constants.MARBLEWID);
		sprite.add("marble", [toInt(color_)]);
		graphic = sprite;
		sprite.play("marble", false);

	}
	
	public override function update()
	{
		
	}
	
	public static function toInt (c : Color) : Int
	{
		return switch (c)
		{
			case RED: 0;
			case BLUE: 1;
			case GREEN: 2;
			case GOLD: 3;
		}
	}
}