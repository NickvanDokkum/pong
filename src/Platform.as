package  {
	/**
	 * ...
	 * @author ... The Hitman
	 */
	import flash.display.Sprite;
	import flash.display.Bitmap;
	
	// not complete yet
	public class Platform extends Sprite
	{
		// temporary art
		[Embed(source="../lib/Platform.png")]
		private var ArtPlatform:Class;
		private var artPlatform:Bitmap;

		public function Platform() 
		{
			
			artPlatform = new ArtPlatform();
			addChild(artPlatform);
			
			// temporary scale
			scaleX = 0.5;
			scaleY = 0.5;
			
			// temporary position
			x = 830;
			y = 503;
		}
		
	}

}