package pt.miguelmurca.FPSound 
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Miguel M
	 */
	public class AudioSource extends Entity
	{
		public var sound:Sound2D;
		public var listeningEntity:Entity;
		public function AudioSource(_listeningEntity:Entity, _sound:Sound2D, _x:Number = 0, _y:Number = 0) 
		{
			listeningEntity = _listeningEntity;
			sound = _sound;
			this.x = _x;
			this.y = _y;
		}
		
		override public function added():void {
			sound.play(sound.loop);
			sound.xDistance = Math.abs(this.x - listeningEntity.x);
			sound.yDistance = Math.abs(this.y - listeningEntity.y);
			super.added();
		}
		
		override public function update():void {
			sound.xDistance = listeningEntity.x - this.x;
			sound.yDistance = listeningEntity.y - this.y;
			sound.update();
			super.update();
		}
		
	}

}