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
		private var ArtTree:Class;
		private var artTree:Bitmap;
		
		public function Tree() 
		{
			artTree = new ArtTree;
			addChild(artTree);
			scaleX = 0.2;
			scaleY = 0.2;
			
		}
		
	}

}