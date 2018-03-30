package  {
	import flash.display.MovieClip;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	public class Portada extends MovieClip{

		public function Portada() {
			// constructor code
				var poli_mct:Tween=new Tween(poli_mc,"x",Strong.easeOut,-100,147.1,4,true);
				var nombre_mct:Tween=new Tween(nombre_mc,"x",Strong.easeOut,-300,112.55,4,true);
				var pra_mct:Tween=new Tween(pra_mc,"x",Strong.easeOut,550,249,4,true);
				var hm_mct:Tween=new Tween(hm_mc,"x",Strong.easeOut,-300,183.55,4,true);
				var siguiente_mct:Tween=new Tween(siguiente_btn,"y",Strong.easeOut,410,254.6,4,true);
				var logo_mct:Tween=new Tween(logo_mc,"y",Strong.easeOut,500,232.75,4,true);
		}

	}
	
}
