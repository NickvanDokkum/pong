package factorys 
{
	/**
	 * ...
	 * @author ...
	 */
	import flash.display.Sprite;
	import flash.display.Bitmap;
	
	public class Platform extends AbstractPlatform
	{
		[Embed(source="../../lib/platform_five.png")]
		private var ArtPlatform:Class;
		private var artPlatform:Bitmap;
		public function Platform() 
		{
			
			artPlatform = new ArtPlatform();
			addChild(artPlatform);
			hitTestObject(artPlatform);
			
			positionX = x = 830;
			positionY = y = 503;
		}
		
	}

}