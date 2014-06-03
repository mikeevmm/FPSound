package pt.miguelmurca.FPSound 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Draw;
	import net.flashpunk.Sfx;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Miguel M
	 */
	public class Sound2D extends Entity
	{
		private var sound:Sfx;
		
		public var xDistance:Number;
		public var yDistance:Number;
		public var loudness:Number;
		public var loop:Boolean;
		
		public function Sound2D(_sound:Class, _loudness:Number, _xDistance:Number, _yDistance:Number) 
		{
			sound = new Sfx(_sound);
			
			xDistance = _xDistance;
			yDistance = _yDistance;
			loudness = _loudness;
			loop = false;
		}
		
		override public function render():void {
			
			super.render();
		}
		
		public function play(_loop:Boolean = false):void {
			loop = _loop;
			sound.pan = FP.clamp(xDistance, -1, 1);
			sound.volume = volumeDistance(FP.distance(0, 0, xDistance, Math.abs(yDistance)),loudness);
			if (loop) {
				sound.loop();
			}else {
				sound.play();
			}
		}
		
		override public function update():void {
			sound.pan = -xDistance / Math.sqrt(loudness + xDistance * xDistance);
			sound.volume = volumeDistance(FP.distance(0, 0, xDistance, yDistance),loudness);
			super.update();
		}
		
		public function stop():void {
			sound.stop();
		}
		
		private function volumeDistance(_distance:Number,_loudness:Number):Number {
			return -(1 / (1 + Math.pow(Math.E, -(1/_loudness)*Math.abs(_distance) + 3))) + 1;
		}
		
	}

}