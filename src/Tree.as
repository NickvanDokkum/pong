package  
{
	import flash.display.Sprite;
	import flash.display.Bitmap;
	/**
	 * ...
	 * @author ... The Hitman
	 */
	public class Tree extends Sprite
	{
		[Embed(source="../lib/tree-01.png")]
		private var ArtTree_one:Class;
		private var artTree_one:Bitmap;
		[Embed(source="../lib/tree-01.png")]
		private var ArtTree_two:Class;
		private var artTree_two:Bitmap;
		[Embed(source="../lib/tree-01.png")]
		private var ArtTree_three:Class;
		private var artTree_three:Bitmap;
		
		public function Tree() 
		{
			artTree_one = new ArtTree_two;
			addChild(artTree_one);
			artTree_one.scaleX = -0.25;
			artTree_one.scaleY = 0.25;
			artTree_one.x = 360;
			artTree_one.y = 20;
		
			
			artTree_two = new ArtTree_two;
			addChild(artTree_two);
			artTree_two.scaleX = 0.50;
			artTree_two.scaleY = 0.50;
			artTree_two.x = 917;
			artTree_two.y = 3;
			
		}
		
	}

}