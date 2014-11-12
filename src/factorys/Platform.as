package factorys 
{
	/**
	 * ...
	 * @author ... The Hitman
	 */
	import flash.display.Sprite;
	import flash.display.Bitmap;
	
	public class Platform extends Sprite
	{
		[Embed(source="../../lib/platform_five.png")]
		private var ArtPlatform:Class;
		private var artPlatform:Bitmap;
		public function Platform() 
		{
			
			artPlatform = new ArtPlatform();
			addChild(artPlatform);
			
			
			x = 830;
			y = 503;
		}
		
	}

}