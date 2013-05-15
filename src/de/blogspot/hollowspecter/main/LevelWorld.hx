package de.blogspot.hollowspecter.main;

import com.haxepunk.World;

/**
 * The Game State where you play a level. . .
 * @author Vivien Baguio
 */
class LevelWorld extends com.haxepunk.World
{
	private var testMarble1 : Marble;
	private var testMarble2 : Marble;
	private var testMarble3 : Marble;
	private var testMarble4 : Marble;

	public function new() 
	{
		super();
	}
	
	public override function begin()
	{
		testMarble1 = new Marble(300, 300, Marble.Color.RED);
		//testMarble2 = new Marble(300, 350, Marble.Color.GREEN);
		//testMarble3 = new Marble(350, 300, Marble.Color.BLUE);
		//testMarble4 = new Marble(350, 350, Marble.Color.GOLD);
		add(testMarble1);
		//add(testMarble2);
		//add(testMarble3);
		//add(testMarble4);
	}
	
	public override function update()
	{
		
	}
}