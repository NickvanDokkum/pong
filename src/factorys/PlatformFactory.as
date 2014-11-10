package factorys {
	/**
	 * ...
	 * @author ...
	 */
	import flash.display.Bitmap;
	import flash.display.Sprite;
	public class PlatformFactory extends Sprite
	{
		
		public static const PLATFORM : String = "standardPlatform" ;
		
		public function makePlatform ( type : String ) : AbstractPlatform
		{
			
			var platform : AbstractPlatform;
			
			if(type == PLATFORM )
			{
				platform = new Platform();
			}
			
			return platform; 
			
		}
		
	}

}