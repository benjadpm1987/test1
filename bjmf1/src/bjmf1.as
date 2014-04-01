package
{
	import com.pruebas.contenido.Jugador;
	import com.pruebas.eventos.myEventJuego;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	
	[SWF(width="800",height="600")]
	public class bjmf1 extends Sprite
	{
		private var mc:Jugador;
		public function bjmf1()
		{
			//-----------------
			
			/*var mc:mc_jugador = new mc_jugador();
			this.addChild(mc);
			mc.x=stage.stageWidth/2;
			mc.y=stage.stageHeight/2;
			mc.scaleX=mc.scaleY=0.5;
			mc.addEventListener(Event.ENTER_FRAME,Mover,false,0,true);*/
			
			mc = new Jugador();
			mc.x=stage.stageWidth/2;
			mc.y=stage.stageHeight/2;
			mc.scaleX=mc.scaleY=0.5;
			this.addChild(mc);
			
			mc.addEventListener(myEventJuego._DOWN,bajar);
			mc.addEventListener(myEventJuego._LEFT,izquierda);
			mc.addEventListener(myEventJuego._UP,subir);
			mc.addEventListener(myEventJuego._RIGHT,derecha);
			
			trace(stage.stageWidth/2);
			trace(stage.stageHeight/2);
		}
		
		protected function derecha(event:Event):void
		{
			mc.avx=10;
			mc.avy=0;
			
		}
		
		protected function subir(event:Event):void
		{
			mc.avx=0;
			mc.avy=-10;
			
		}
		
		protected function izquierda(event:Event):void
		{
			mc.avx=-10;
			mc.avy=0;
			
		}
		
		protected function bajar(event:Event):void
		{
			mc.avx=0;
			mc.avy=10;
		}
		
		/*protected function Mover(event:Event):void
		{
			var t:mc_jugador = event.target as mc_jugador;
			t.x+=10;
			
		}*/
	}
}