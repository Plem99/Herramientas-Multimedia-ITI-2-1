package  {
	
	import flash.events.Event;
	import flash.display.Loader;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.net.URLLoader;
	import flash.net.navigateToURL;
	import fl.transitions.Tween;
	import fl.transitions.*;
	import fl.transitions.easing.*;
	import flash.utils.Timer;
    import flash.events.TimerEvent;
	
	public class Main extends MovieClip {
		var Galeria:Sprite=new Sprite();
		//var carga:Loader=new Loader();
		
		var datosXML:XML;
		var numeroElementos:uint;
		var imagen:Loader=new Loader();
		
		var timer1: Timer = new Timer(995, cont++);
		var cont: int = 0;
		var timer2: Timer = new Timer(995, cont2++);
		var cont2: int = 0;
		var timer3: Timer = new Timer(995, cont3++);
		var cont3: int = 0;
		var timer4: Timer = new Timer(995, cont4++);
		var cont4: int = 0;
		var tmp: int=0;
		
		var tiempo1:Boolean=true;
		var tiempo1_1:Boolean=false;
		var tiempo2:Boolean=true;
		var tiempo2_2:Boolean=false;
		var tiempo3:Boolean=true;
		var tiempo4:Boolean=true;
		
		var boleano1:Boolean=false;
		var boleano2:Boolean=false;
		var boleano3:Boolean=false;
		var boleano4:Boolean=false;
		
		public function Main() {
			enter_btn.addEventListener(MouseEvent.CLICK, Enter);
		}
//==============================================================================================================================			
//Enter.
//==============================================================================================================================
		public function Enter (event:MouseEvent):void{
			if (contrasena_txt.text==""){
				alert_txt.text="*Introduzca la contraseña";
			}else{
				gotoAndStop(2);
				practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				info_btn.addEventListener(MouseEvent.CLICK, Videos);
				inicio_btn.addEventListener(MouseEvent.CLICK, Inicio);
				i1.visible=false;

			}
		}
//==============================================================================================================================			
//Prácticas.
//==============================================================================================================================
		public function Practicas (event:MouseEvent):void{
			timer1.addEventListener(TimerEvent.TIMER, Tiempo1);
			
			if (tiempo1==true){
				tiempo1=false;
				timer1.start();
				i1.visible=true;
				i1.gotoAndPlay(2);
			}
			if (tiempo1_1==true){
				tiempo1_1=false;
				gotoAndStop(3);
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				info_btn.addEventListener(MouseEvent.CLICK, Videos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				inicio_btn.addEventListener(MouseEvent.CLICK, Inicio);
				p1_btn.addEventListener(MouseEvent.CLICK, Practica1);
				p2_btn.addEventListener(MouseEvent.CLICK, Practica2);
				p3_btn.addEventListener(MouseEvent.CLICK, Practica3);
				p4_btn.addEventListener(MouseEvent.CLICK, Practica4);
				p5_btn.addEventListener(MouseEvent.CLICK, Practica5);
				p5_5btn.addEventListener(MouseEvent.CLICK, Practica5_5);
				p6_btn.addEventListener(MouseEvent.CLICK, Practica6);
				p7_btn.addEventListener(MouseEvent.CLICK, Practica7);
				p8_btn.addEventListener(MouseEvent.CLICK, Practica8);
				p9_btn.addEventListener(MouseEvent.CLICK, Practica9);
				p10_btn.addEventListener(MouseEvent.CLICK, Practica10);
				sig_btn.addEventListener(MouseEvent.CLICK, Siguiente);
			}
			if (boleano1==true){
				gotoAndStop(3);
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				info_btn.addEventListener(MouseEvent.CLICK, Videos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				inicio_btn.addEventListener(MouseEvent.CLICK, Inicio);
				p1_btn.addEventListener(MouseEvent.CLICK, Practica1);
				p2_btn.addEventListener(MouseEvent.CLICK, Practica2);
				p3_btn.addEventListener(MouseEvent.CLICK, Practica3);
				p4_btn.addEventListener(MouseEvent.CLICK, Practica4);
				p5_btn.addEventListener(MouseEvent.CLICK, Practica5);
				p5_5btn.addEventListener(MouseEvent.CLICK, Practica5_5);
				p6_btn.addEventListener(MouseEvent.CLICK, Practica6);
				p7_btn.addEventListener(MouseEvent.CLICK, Practica7);
				p8_btn.addEventListener(MouseEvent.CLICK, Practica8);
				p9_btn.addEventListener(MouseEvent.CLICK, Practica9);
				p10_btn.addEventListener(MouseEvent.CLICK, Practica10);
				sig_btn.addEventListener(MouseEvent.CLICK, Siguiente);
			}
			
		}
		public function Tiempo1(event: TimerEvent): void {
			tmp++
			if (tmp == 1) {
				tmp=0;
				gotoAndStop(3);
				timer1.stop();
				boleano2=true;
				boleano3=true;
				boleano4=true;
				tiempo2=false;
				tiempo3=false;
				tiempo4=false;
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				info_btn.addEventListener(MouseEvent.CLICK, Videos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				inicio_btn.addEventListener(MouseEvent.CLICK, Inicio);
				p1_btn.addEventListener(MouseEvent.CLICK, Practica1);
				p2_btn.addEventListener(MouseEvent.CLICK, Practica2);
				p3_btn.addEventListener(MouseEvent.CLICK, Practica3);
				p4_btn.addEventListener(MouseEvent.CLICK, Practica4);
				p5_btn.addEventListener(MouseEvent.CLICK, Practica5);
				p5_5btn.addEventListener(MouseEvent.CLICK, Practica5_5);
				p6_btn.addEventListener(MouseEvent.CLICK, Practica6);
				p7_btn.addEventListener(MouseEvent.CLICK, Practica7);
				p8_btn.addEventListener(MouseEvent.CLICK, Practica8);
				p9_btn.addEventListener(MouseEvent.CLICK, Practica9);
				p10_btn.addEventListener(MouseEvent.CLICK, Practica10);
				sig_btn.addEventListener(MouseEvent.CLICK, Siguiente);

			}
			
		}
		public function Siguiente (event:MouseEvent):void{
			tiempo1=false;
			tiempo1_1=true;
			gotoAndStop(7);
			p11_btn.addEventListener(MouseEvent.CLICK, Practica11);
			t1_btn.addEventListener(MouseEvent.CLICK, Tarea1);
			t2_btn.addEventListener(MouseEvent.CLICK, Tarea2);
			t3_btn.addEventListener(MouseEvent.CLICK, Tarea3);
			t4_btn.addEventListener(MouseEvent.CLICK, Tarea4);
			t5_btn.addEventListener(MouseEvent.CLICK, Tarea5);
			ant_btn.addEventListener(MouseEvent.CLICK, Practicas);
			videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
			info_btn.addEventListener(MouseEvent.CLICK, Videos);
			poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
			multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
			inicio_btn.addEventListener(MouseEvent.CLICK, Inicio);
			
		}
//==============================================================================================================================			
//Multimedia.
//==============================================================================================================================
		public function Multimedia (event:MouseEvent):void{
			timer2.addEventListener(TimerEvent.TIMER, Tiempo2);
			if (tiempo2==true){
				tiempo2=false;
				timer2.start();
				i1.visible=true;
				i1.gotoAndPlay(2);
			}
			if (boleano2==true){
				gotoAndStop(4);
				practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				info_btn.addEventListener(MouseEvent.CLICK, Videos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				videos_btn.addEventListener(MouseEvent.CLICK, Videos);
				inicio_btn.addEventListener(MouseEvent.CLICK, Inicio);

				m1.addEventListener(MouseEvent.CLICK, Imagen1);
				m2.addEventListener(MouseEvent.CLICK, Imagen2);
				m3.addEventListener(MouseEvent.CLICK, Imagen3);
				m4.addEventListener(MouseEvent.CLICK, Imagen4);
				m5.addEventListener(MouseEvent.CLICK, Imagen5);
				m6.addEventListener(MouseEvent.CLICK, Imagen6);
				m7.addEventListener(MouseEvent.CLICK, Imagen7);
				m8.addEventListener(MouseEvent.CLICK, Imagen8);
				m9.addEventListener(MouseEvent.CLICK, Imagen9);
				m10.addEventListener(MouseEvent.CLICK, Imagen10);
				m11.addEventListener(MouseEvent.CLICK, Imagen11);
				m12.addEventListener(MouseEvent.CLICK, Imagen12);
				m13.addEventListener(MouseEvent.CLICK, Imagen13);
				m14.addEventListener(MouseEvent.CLICK, Imagen14);
				m15.addEventListener(MouseEvent.CLICK, Imagen15);
				m16.addEventListener(MouseEvent.CLICK, Imagen16);
				m17.addEventListener(MouseEvent.CLICK, Imagen17);
				m18.addEventListener(MouseEvent.CLICK, Imagen18);
				m19.addEventListener(MouseEvent.CLICK, Imagen19);
				m20.addEventListener(MouseEvent.CLICK, Imagen20);
			}
	
		}
		public function Tiempo2(event: TimerEvent): void {
			tmp++
			if (tmp == 1) {
				tmp=0;
				gotoAndStop(4);
				tiempo2_2=true;
				tiempo4=false;
				timer2.stop();
				boleano1=true;
				boleano3=true;
				boleano4=true;
				tiempo1=false;
				tiempo3=false;
				tiempo4=false;
				practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				info_btn.addEventListener(MouseEvent.CLICK, Videos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				videos_btn.addEventListener(MouseEvent.CLICK, Videos);
				inicio_btn.addEventListener(MouseEvent.CLICK, Inicio);

				m1.addEventListener(MouseEvent.CLICK, Imagen1);
				m2.addEventListener(MouseEvent.CLICK, Imagen2);
				m3.addEventListener(MouseEvent.CLICK, Imagen3);
				m4.addEventListener(MouseEvent.CLICK, Imagen4);
				m5.addEventListener(MouseEvent.CLICK, Imagen5);
				m6.addEventListener(MouseEvent.CLICK, Imagen6);
				m7.addEventListener(MouseEvent.CLICK, Imagen7);
				m8.addEventListener(MouseEvent.CLICK, Imagen8);
				m9.addEventListener(MouseEvent.CLICK, Imagen9);
				m10.addEventListener(MouseEvent.CLICK, Imagen10);
				m11.addEventListener(MouseEvent.CLICK, Imagen11);
				m12.addEventListener(MouseEvent.CLICK, Imagen12);
				m13.addEventListener(MouseEvent.CLICK, Imagen13);
				m14.addEventListener(MouseEvent.CLICK, Imagen14);
				m15.addEventListener(MouseEvent.CLICK, Imagen15);
				m16.addEventListener(MouseEvent.CLICK, Imagen16);
				m17.addEventListener(MouseEvent.CLICK, Imagen17);
				m18.addEventListener(MouseEvent.CLICK, Imagen18);
				m19.addEventListener(MouseEvent.CLICK, Imagen19);
				m20.addEventListener(MouseEvent.CLICK, Imagen20);
			}
			
		}
		public function RChild (event:MouseEvent):void{
			removeChild(Galeria);
			gotoAndStop(4);
			practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
			videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
			info_btn.addEventListener(MouseEvent.CLICK, Videos);
			poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
			inicio_btn.addEventListener(MouseEvent.CLICK, Inicio);
			videos_btn.addEventListener(MouseEvent.CLICK, Videos);
			m1.addEventListener(MouseEvent.CLICK, Imagen1);
			m2.addEventListener(MouseEvent.CLICK, Imagen2);
			m3.addEventListener(MouseEvent.CLICK, Imagen3);
			m4.addEventListener(MouseEvent.CLICK, Imagen4);
			m5.addEventListener(MouseEvent.CLICK, Imagen5);
			m6.addEventListener(MouseEvent.CLICK, Imagen6);
			m7.addEventListener(MouseEvent.CLICK, Imagen7);
			m8.addEventListener(MouseEvent.CLICK, Imagen8);
			m9.addEventListener(MouseEvent.CLICK, Imagen9);
			m10.addEventListener(MouseEvent.CLICK, Imagen10);
			m11.addEventListener(MouseEvent.CLICK, Imagen11);
			m12.addEventListener(MouseEvent.CLICK, Imagen12);
			m13.addEventListener(MouseEvent.CLICK, Imagen13);
			m14.addEventListener(MouseEvent.CLICK, Imagen14);
			m15.addEventListener(MouseEvent.CLICK, Imagen15);
			m16.addEventListener(MouseEvent.CLICK, Imagen16);
			m17.addEventListener(MouseEvent.CLICK, Imagen17);
			m18.addEventListener(MouseEvent.CLICK, Imagen18);
			m19.addEventListener(MouseEvent.CLICK, Imagen19);
			m20.addEventListener(MouseEvent.CLICK, Imagen20);
		}
//==============================================================================================================================			
//VideoJuegos.
//==============================================================================================================================
		public function VideoJuegos (event:MouseEvent):void{
			timer3.addEventListener(TimerEvent.TIMER, Tiempo3);
			if (tiempo3==true){
				tiempo3=false;
				timer3.start();
				i1.visible=true;
				i1.gotoAndPlay(2);
			}
			if (boleano3==true){
				gotoAndStop(5);
				practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				info_btn.addEventListener(MouseEvent.CLICK, Videos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				col_btn.addEventListener(MouseEvent.CLICK,Practica4 );
				mem_btn.addEventListener(MouseEvent.CLICK,Memorama );
				ser_btn.addEventListener(MouseEvent.CLICK, SerYEsc );
			}
		}
		public function Tiempo3(event: TimerEvent): void {
			tmp++
			if (tmp == 1) {
				tmp=0;
				gotoAndStop(5);
				timer3.stop();
				boleano1=true;
				boleano2=true;
				boleano4=true;
				tiempo1=false;
				tiempo2=false;
				tiempo4=false;
				practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				info_btn.addEventListener(MouseEvent.CLICK, Videos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				col_btn.addEventListener(MouseEvent.CLICK,Practica4 );
				mem_btn.addEventListener(MouseEvent.CLICK,Memorama );
				ser_btn.addEventListener(MouseEvent.CLICK, SerYEsc );
			}
		}
//==============================================================================================================================			
//Información.
//==============================================================================================================================
		public function Videos (event:MouseEvent):void{
			tiempo2=false;
			timer4.addEventListener(TimerEvent.TIMER, Tiempo4);
			if (tiempo4==true){
				tiempo4=false;
				timer4.start();
				i1.visible=true;
				i1.gotoAndPlay(2);
			}
			if (tiempo2_2==true){
				tiempo2_2=false;
				gotoAndStop(6);
				practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				
				video1.addEventListener(MouseEvent.CLICK, Video1);
				video2.addEventListener(MouseEvent.CLICK, Video2);
				video3.addEventListener(MouseEvent.CLICK, Video3);
				video4.addEventListener(MouseEvent.CLICK, Video4);
				video5.addEventListener(MouseEvent.CLICK, Video5);
				video6.addEventListener(MouseEvent.CLICK, Video6);
				video7.addEventListener(MouseEvent.CLICK, Video7);
				video8.addEventListener(MouseEvent.CLICK, Video8);
				video9.addEventListener(MouseEvent.CLICK, Video9);
				video10.addEventListener(MouseEvent.CLICK, Video10);
				video11.addEventListener(MouseEvent.CLICK, Video11);
				video12.addEventListener(MouseEvent.CLICK, Video12);
			}
			if (boleano4==true){
				gotoAndStop(6);
				practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				
				video1.addEventListener(MouseEvent.CLICK, Video1);
				video2.addEventListener(MouseEvent.CLICK, Video2);
				video3.addEventListener(MouseEvent.CLICK, Video3);
				video4.addEventListener(MouseEvent.CLICK, Video4);
				video5.addEventListener(MouseEvent.CLICK, Video5);
				video6.addEventListener(MouseEvent.CLICK, Video6);
				video7.addEventListener(MouseEvent.CLICK, Video7);
				video8.addEventListener(MouseEvent.CLICK, Video8);
				video9.addEventListener(MouseEvent.CLICK, Video9);
				video10.addEventListener(MouseEvent.CLICK, Video10);
				video11.addEventListener(MouseEvent.CLICK, Video11);
				video12.addEventListener(MouseEvent.CLICK, Video12);
			}
		}
		public function Tiempo4(event: TimerEvent): void {
			tmp++
			if (tmp == 1) {
				tmp=0;
				gotoAndStop(6);
				timer4.stop();
				boleano1=true;
				boleano3=true;
				boleano2=true;
				tiempo1=false;
				tiempo3=false;
				tiempo2=false;
				practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
				
				video1.addEventListener(MouseEvent.CLICK, Video1);
				video2.addEventListener(MouseEvent.CLICK, Video2);
				video3.addEventListener(MouseEvent.CLICK, Video3);
				video4.addEventListener(MouseEvent.CLICK, Video4);
				video5.addEventListener(MouseEvent.CLICK, Video5);
				video6.addEventListener(MouseEvent.CLICK, Video6);
				video7.addEventListener(MouseEvent.CLICK, Video7);
				video8.addEventListener(MouseEvent.CLICK, Video8);
				video9.addEventListener(MouseEvent.CLICK, Video9);
				video10.addEventListener(MouseEvent.CLICK, Video10);
				video11.addEventListener(MouseEvent.CLICK, Video11);
				video12.addEventListener(MouseEvent.CLICK, Video12);
			}
		}
//==============================================================================================================================			
//Inicio.
//==============================================================================================================================
		public function Inicio (event:MouseEvent):void{
			gotoAndStop(2);
			practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
			multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
			videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
			info_btn.addEventListener(MouseEvent.CLICK, Videos);
			poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
			i1.visible=false;
			tiempo1=true;
			tiempo1_1=false;
			tiempo2=true;
			tiempo2_2=false;
			tiempo3=true;
			tiempo4=true;
			
			boleano1=false;
			boleano2=false;
			boleano3=false;
			boleano4=false;
			//removeChild(Galeria);
		}
//==============================================================================================================================			
//Práctica 1.
//==============================================================================================================================			
		public function Practica1(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 1/Práctica 1.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Práctica 2.
//==============================================================================================================================		
		public function Practica2(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 2/Práctica 2.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Práctica 3.
//==============================================================================================================================
		public function Practica3(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 3/Práctica 3.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Práctica 4.
//==============================================================================================================================
		public function Practica4(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 4/Práctica 4.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Práctica 5.
//==============================================================================================================================
		public function Practica5(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 5/Práctica 5.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Práctica 5_5.
//==============================================================================================================================
		public function Practica5_5(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 5_5/Práctica 5_5.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Práctica 6.
//==============================================================================================================================
		public function Practica6(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 6/Práctica 6.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Práctica 7.
//==============================================================================================================================
		public function Practica7(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 7/Práctica 7.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Práctica 8.
//==============================================================================================================================
		public function Practica8(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 8/Práctica 8.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Práctica 9.
//==============================================================================================================================
		public function Practica9(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 9/Práctica 9.html");
			navigateToURL(practica,"self");
		
		}
//==============================================================================================================================			
//Práctica 10.
//==============================================================================================================================
		public function Practica10(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 10/Práctica 10.html");
			navigateToURL(practica,"self");

		}
//==============================================================================================================================			
//Práctica 11.
//==============================================================================================================================
		public function Practica11(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Práctica 11/Práctica 11.html");
			navigateToURL(practica,"self");

		}
//==============================================================================================================================			
//Tarea 1.
//==============================================================================================================================
		public function Tarea1(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Tarea 1/Herramientas_Multimedia_1.pdf");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Tarea 2.
//==============================================================================================================================
		public function Tarea2(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Tarea 2/Pseudocodigo.pdf");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Tarea 3.
//==============================================================================================================================
		public function Tarea3(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Tarea 3/Tarea 3.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Tarea 4.
//==============================================================================================================================
		public function Tarea4(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Tarea 4/Tarea 4.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Tarea 5.
//==============================================================================================================================
		public function Tarea5(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Tarea 5/Tarea 5.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Memorama.
//==============================================================================================================================
		public function Memorama(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("Memorama/Memorama.html");
			navigateToURL(practica,"self");
			
		}
//==============================================================================================================================			
//Serpientes y Escaleras.
//==============================================================================================================================
		public function SerYEsc(event:MouseEvent):void{
			var practica:URLRequest = new URLRequest("SeryEsc/Serpientes y Escaleras.html");
			navigateToURL(practica,"self");
			
		}
//=============================================================================================
		public function Imagen1(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[0].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen2(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[1].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen3(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[2].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen4(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[3].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen5(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[4].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen6(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[5].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen7(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[6].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen8(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[7].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen9(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[8].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen10(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[9].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen11(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[10].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen12(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[11].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen13(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[12].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen14(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[13].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen15(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[14].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen16(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[15].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen17(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[16].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen18(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[17].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen19(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[18].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen20(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria);
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[19].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//==============================================================================================================================			
//Video 1.
//==============================================================================================================================
		public function Video1(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/1-Diseño.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 2.
//==============================================================================================================================
		public function Video2(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/2-Dado.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 3.
//==============================================================================================================================
		public function Video3(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/3-Selector de Jugadores.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 4.
//==============================================================================================================================
		public function Video4(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/4-Reglas.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 5.
//==============================================================================================================================
		public function Video5(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/5-Tiempo.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 6.
//==============================================================================================================================
		public function Video6(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/video6.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 7.
//==============================================================================================================================
		public function Video7(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/video7.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 8.
//==============================================================================================================================
		public function Video8(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/Video8.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 9.
//==============================================================================================================================
		public function Video9(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/Video9.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 10.
//==============================================================================================================================
		public function Video10(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Práctica 10/Video10.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 11.
//==============================================================================================================================
		public function Video11(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Video Opinion.mp4");
			navigateToURL(Videos,"self");
		}
//==============================================================================================================================			
//Video 12.
//==============================================================================================================================
		public function Video12(event:MouseEvent):void{
			var Videos:URLRequest = new URLRequest("Video Opinion IN.mp4");
			navigateToURL(Videos,"self");
		}
	}

}