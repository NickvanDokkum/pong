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
		[Embed(source="../lib/Platform_Floating_2.png")]
		private var ArtPlatform_two:Class;
		[Embed(source = "../lib/Platform_2.png")]
		private var ArtPlatform_three:Class;
		[Embed(source = "../lib/Platform_2.png")]
		private var ArtPlatform_four:Class;
		[Embed(source = "../lib/Platform_2.png")]
		private var ArtPlatform_five:Class;
		[Embed(source = "../lib/Platform_2.png")]
		private var ArtPlatform_six:Class;
		[Embed(source="../lib/Platform_Floating_withplank.png")]
		private var ArtPlatform_seven:Class;
		[Embed(source="../lib/Platform_Floating_floor_middle.png")]
		private var ArtPlatform_eight:Class;
		[Embed(source="../lib/Platform_Floating_floor.png")]
		private var ArtPlatform_nine:Class;
		[Embed(source="../lib/Platform_Floating_floor_middle.png")]
		private var ArtPlatform_ten:Class;
		[Embed(source="../lib/Platform_Floating_floor_middle.png")]
		private var ArtPlatform_eleven:Class;
		
	
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
				case 7:
					holder = new ArtPlatform_seven();
					break;
				case 8:
					holder = new ArtPlatform_eight();
					break;
				case 9:
					holder = new ArtPlatform_nine();
					break;
				case 10:
					holder = new ArtPlatform_ten();
					break;
				case 11:
					holder = new ArtPlatform_eleven();
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