package  
{
	import flash.display.Sprite;
	import flash.display.Bitmap;
	/**
	 * ...
	 * @author ...
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
			artTree_one = new ArtTree_one;
			addChild(artTree_one);
			artTree_one.scaleX = -0.42;
			artTree_one.scaleY = 0.42;
			artTree_one.x = 440;
			artTree_one.y = 289;
			
		}
		
	}

}