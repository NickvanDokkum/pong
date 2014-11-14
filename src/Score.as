package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Score 
	{
		private var score01:MovieClip = new _0;
		private var score02:MovieClip = new _0;
		private var score11:MovieClip = new _1;
		private var score12:MovieClip = new _1;
		private var score21:MovieClip = new _2;
		private var score22:MovieClip = new _2;
		private var score31:MovieClip = new drie;
		private var score32:MovieClip = new drie;
		
		private var score1:Number = 0;
		private var score2:Number = 0;
		
		public function Score() 
		{
			score01.scaleX = 0.3;
			score01.scaleY = 0.3;
			score01.x = 550;
			score01.y = 60;
			score02.scaleX = 0.3;
			score02.scaleY = 0.3;
			score02.x = 650;
			score02.y = 60;
			score11.scaleX = 0.3;
			score11.scaleY = 0.3;
			score11.x = 550;
			score11.y = 60;
			score12.scaleX = 0.3;
			score12.scaleY = 0.3;
			score12.x = 650;
			score12.y = 60;
			score21.scaleX = 0.3;
			score21.scaleY = 0.3;
			score21.x = 550;
			score21.y = 60;
			score22.scaleX = 0.3;
			score22.scaleY = 0.3;
			score22.x = 650;
			score22.y = 60;
			score31.scaleX = 0.3;
			score31.scaleY = 0.3;
			score31.x = 550;
			score31.y = 60;
			score32.scaleX = 0.3;
			score32.scaleY = 0.3;
			score32.x = 650;
			score32.y = 60;
			
			Main.main.stage.addChild(score01);
			Main.main.stage.addChild(score02);
			
			score01.stop();
			score02.stop();
			score11.stop();
			score12.stop();
			score21.stop();
			score22.stop();
			score31.stop();
			score32.stop();
			
			Main.main.stage.addEventListener(Event.ENTER_FRAME, updateFunction);
		}
		private function updateFunction(e:Event) {
			trace(score11.totalFrames);
			if (score01.currentFrame >= score01.totalFrames - 2) {
				if (Main.main.stage.contains(score01)) {
					score01.stop();
					Main.main.stage.removeChild(score01);
					Main.main.stage.addChild(score11);
					score11.play();
				}
			}
			if (score11.currentFrame >= score11.totalFrames / 2 + 2 && score1 == 0) {
				score11.stop();
				score1++;
			}
			if (score02.currentFrame >= score02.totalFrames - 2) {
				if (Main.main.stage.contains(score02)) {
					score02.stop();
					Main.main.stage.removeChild(score02);
					Main.main.stage.addChild(score12);
					score12.play();
				}
			}
			if (score12.currentFrame >= score12.totalFrames / 2 + 2 && score2 == 0) {
				score12.stop();
				score2++;
			}
			 if (score11.currentFrame >= score11.totalFrames - 2) {
				if (Main.main.stage.contains(score11)) {
					score11.stop();
					Main.main.stage.removeChild(score11);
					Main.main.stage.addChild(score21);
					score21.play();
				}
			}
			if (score21.currentFrame >= score21.totalFrames / 2 + 3 && score1 == 1) {
				score21.stop();
				score1++;
			}
			if (score12.currentFrame >= score12.totalFrames - 2) {
				if (Main.main.stage.contains(score12)) {
					score12.stop();
					Main.main.stage.removeChild(score12);
					Main.main.stage.addChild(score22);
					score22.play();
				}
			}
			if (score22.currentFrame >= score22.totalFrames / 2 + 3 && score2 == 1) {
				score22.stop();
				score2++;
			}
			if (score21.currentFrame >= score21.totalFrames - 2) {
				if (Main.main.stage.contains(score21)) {
					score21.stop();
					Main.main.stage.removeChild(score21);
					Main.main.stage.addChild(score31);
					score31.play();
				}
			}
			if (score31.currentFrame >= score31.totalFrames / 2 + 4 && score1 == 2) {
				score31.stop();
				score1++;
			}
			if (score22.currentFrame >= score22.totalFrames - 2) {
				if (Main.main.stage.contains(score22)) {
					score22.stop();
					Main.main.stage.removeChild(score22);
					Main.main.stage.addChild(score32);
					score32.play();
				}
			}
			if (score32.currentFrame >= score32.totalFrames / 2 + 4 && score2 == 2) {
				score32.stop();
				score2++;
			}
		}
		public function Score11() {
			score01.play();
		}
		public function Score12() {
			score02.play();
		}
		public function Score21() {
			score11.play();
		}
		public function Score22() {
			score12.play();
		}
		public function Score31() {
			score21.play();
		}
		public function Score32() {
			score22.play();
		}
	}
}