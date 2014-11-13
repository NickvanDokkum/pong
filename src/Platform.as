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
		[Embed(source="../lib/Platform_Floating_Withplank.png")]
		private var ArtPlatform_one:Class;
		[Embed(source="../lib/Platform_Floating_Withplank.png")]
		private var ArtPlatform_two:Class;
		[Embed(source = "../lib/Platform_2.png")]
		private var ArtPlatform_three:Class;
		[Embed(source = "../lib/Platform_2.png")]
		private var ArtPlatform_four:Class;
		[Embed(source = "../lib/Platform_2.png")]
		private var ArtPlatform_five:Class;
		[Embed(source = "../lib/Platform_2.png")]
		private var ArtPlatform_six:Class;
		
		
	
		private var holder : Bitmap;

		
		
		
		

		public function Platform(nr:int) 
		{

			switch (nr)
			{
				case 1:
					holder = new ArtPlatform_one();
					break;
				case 2:
					holder = new ArtPlatform_two();
					break;
				case 3:
					holder = new ArtPlatform_three();
					break;
				case 4:
					holder = new ArtPlatform_four();
					break;
				case 5:
					holder = new ArtPlatform_five();
					break;
				case 6:
					holder = new ArtPlatform_six();
					break;
			
				

				default:
					//empty
					break;
				// temporary position
				//x = 1050;
				//y = 330;
			}
			addChild(holder);
		}
		
	}

}