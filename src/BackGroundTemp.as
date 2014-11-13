package  
{
	/**
	 * ...
	 * @author ... The Hitman
	 */
	
	import flash.display.Sprite;
	import flash.display.Bitmap;
	
	public class BackGroundTemp extends Sprite
	{
		
		[Embed(source = "../lib/level_lay_out-01.png")]
		private var BgArt : Class;
		private var bgArt : Bitmap;
		
		public function BackGroundTemp() 
		{
			bgArt = new BgArt;
			addChild(bgArt);
		
		}
		
	}

}