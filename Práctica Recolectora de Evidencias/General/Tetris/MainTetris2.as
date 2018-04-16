package  {
	
	import flash.events.TimerEvent;
	//import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.Loader;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import fl.transitions.Tween;
	import fl.transitions.TweenEvent;
	import fl.transitions.easing.*;
	import flash.utils.Timer;
	import flash.display.MovieClip;
	import flash.net.LocalConnection;
	
	public class MainTetris2 extends MovieClip {
		//variable para poder llevar a cabo la conexión con otro swf
		var ml:LocalConnection= new LocalConnection();
		//declaracion del sprite donde se colocaran los cuadros
		var jue: Sprite = new Sprite();
		var rdm: int;//variable que recibira valores entre 1 y 7 para saber que figura colocar
		//variables para la caida de las figuras 
		var velocidad: int;
		var timer: Timer = new Timer(velocidad, tmp);
		var tmp: int = 0;
		var timer2: Timer = new Timer(1000, tmp2++);
		var tmp2: int = 0;
		var sg: int;
		var min:int;
		//array que almacenara los 4 cuadros que conforman las 7 diferentes figuras
		var cuadrosFig: Array = new Array();
		//variables para saber si se salio algun bloque del escenario
		var fuera: Boolean = false;
		var fueraX2: Boolean = false;
		//variable para saber si se perdio y para los puntos
		var perder: Boolean = false;
		var puntos: int = 0;
		//var puntos1: int = 0;
		//declaramos una variable tipo movieclip
		var c: MovieClip = new MovieClip();
		//declaramos variables que sabran el caso de rotacion de las figuras 
		var fig2: int;
		var fig3: int;
		var fig4: int;
		var fig5: int;
		var fig6: int;
		var fig7: int;
		//declaracion de arrays para manipular los cuadros añadidos con addchild
		var juego: Array = new Array();
		var juegoPosX: Array = new Array();
		var juegoPosY: Array = new Array();
		var juegoAux: Array = new Array();
		var juegoPosXAux: Array = new Array();
		var juegoPosYAux: Array = new Array();
		//varaible que sabra si ya choco un bloque con otro
		var chocoy: Boolean = false;
		//variables indices de fors
		var i: int;
		var j: int
		//variables de filas
		var altura: int;
		var filas: Array = new Array();
		var contFilas: int = 0;
		
		
		var nivelBool: Boolean = false;
		var jugador: Array = new Array();
		var Gjugador:Boolean=true;
		var Sjugador:Boolean=false;
		//var jug2b:Boolean;

		public function MainTetris2() {//funcion donde inicializamos el array de filas
			for (i = 0; i < 15; i++) {
				filas.push(0);
			}
			//hacer la conexión con otro swf
			ml.connect("multi1");
			ml.client=this;
			siguiente_btn1.addEventListener(MouseEvent.CLICK, Siguiente1);
		}
		public function Siguiente1(event: MouseEvent) {
			gotoAndStop(2);
			jugar_btn.addEventListener(MouseEvent.CLICK, Jugar);
			reglas_btn.addEventListener(MouseEvent.CLICK,Reglas);
			niveles_btn.addEventListener(MouseEvent.CLICK,Niveles);
			x_mc.addEventListener(MouseEvent.CLICK,Cerrar);
			x2_mc.addEventListener(MouseEvent.CLICK,Cerrar);
			lvl1.addEventListener(MouseEvent.CLICK,Nvl1);
			lvl2.addEventListener(MouseEvent.CLICK,Nvl2);
			lvl3.addEventListener(MouseEvent.CLICK,Nvl3);
			lvl4.addEventListener(MouseEvent.CLICK,Nvl4);
			trans_mc.visible=false;
			reglas_mc.visible=false;
			x_mc.visible=false;
			x2_mc.visible=false;
			lvl_mc.visible=false;
			lvls.visible=false;
			lvl1.visible=false;
			lvl2.visible=false;
			lvl3.visible=false;
			lvl4.visible=false;
		}
		public function Jugar(event: MouseEvent) {
			NivelBooleano();
		/*if(nivelBool==true){
			gotoAndStop(3);
			stage.focus=this;
			stage.addEventListener(Event.ENTER_FRAME, Caida);//====================================
			rdm = Math.random() * 7 + 1;
			siguiente_btn2.addEventListener(MouseEvent.CLICK, Siguiente2);
			timer.addEventListener(TimerEvent.TIMER, tiempo);
			//stage.addEventListener(KeyboardEvent.KEY_DOWN, precionar);
			stage.addChild(jue);
		}*/
		if(nivelBool==true){
			gotoAndStop(5);
			siguiente4_btn.addEventListener(MouseEvent.CLICK,Siguiente4);
			anterior3_btn.addEventListener(MouseEvent.CLICK,Antes3);
			guardar_btn.addEventListener(MouseEvent.CLICK,Guardar);
			guardar_btn2.visible=false;
		}
		
		}
		public function Caida(event: Event) {//funcion que coloca las figuras y activa la caida de las mismas
			timer.stop();//detenemos el timer para evitar cualquier error logicpo
			stage.removeEventListener(Event.ENTER_FRAME, Caida);
			cuadrosFig.length = 0;//reseteamos el array que almacena los bloques de las figuras por si ya tenia algunos
			//rdm = Math.random() * 7 + 1;//generamos un numero random entre 1 y 7
			switch (rdm) {//switch que compara la variable rdm
				case 1://caso 1, se coloca la figura roja en el tablero
					f1c1.x = 150;
					f1c1.y = 30;
					f1c2.x = 180;
					f1c2.y = 30;
					f1c3.x = 150;
					f1c3.y = 60;
					f1c4.x = 180;
					f1c4.y = 60;
					cuadrosFig.push(f1c1);//se almacena en el array
					cuadrosFig.push(f1c2);
					cuadrosFig.push(f1c3);
					cuadrosFig.push(f1c4);
					choque();//se verifica si al colocarse choco con otra figura, para asi saber que se perdio
					break;
				case 2://caso 2, se coloca la figura azul en el tablero
					fig2 = 1;
					f2c1.x = 120;
					f2c1.y = 30;
					f2c2.x = 150;
					f2c2.y = 30;
					f2c3.x = 180;
					f2c3.y = 30;
					f2c4.x = 210;
					f2c4.y = 30;
					cuadrosFig.push(f2c1);//se almacena en el array
					cuadrosFig.push(f2c2);
					cuadrosFig.push(f2c3);
					cuadrosFig.push(f2c4);
					choque();//se verifica si al colocarse choco con otra figura, para asi saber que se perdio
					break;
				case 3://caso 3, se coloca la figura amarilla en el tablero
					fig3 = 1;
					f3c1.x = 150;
					f3c1.y = 30;
					f3c2.x = 120;
					f3c2.y = 60;
					f3c3.x = 150;
					f3c3.y = 60;
					f3c4.x = 180;
					f3c4.y = 60;
					cuadrosFig.push(f3c1);//se almacena en el array
					cuadrosFig.push(f3c2);
					cuadrosFig.push(f3c3);
					cuadrosFig.push(f3c4);
					choque();//se verifica si al colocarse choco con otra figura, para asi saber que se perdio
					break;
				case 4://caso 4, se coloca la figura rosa en el tablero
					fig4 = 1;
					f4c1.x = 120;
					f4c1.y = 30;
					f4c2.x = 150;
					f4c2.y = 30;
					f4c3.x = 180;
					f4c3.y = 30;
					f4c4.x = 120;
					f4c4.y = 60;
					cuadrosFig.push(f4c1);//se almacena en el array
					cuadrosFig.push(f4c2);
					cuadrosFig.push(f4c3);
					cuadrosFig.push(f4c4);
					choque();//se verifica si al colocarse choco con otra figura, para asi saber que se perdio
					break;
				case 5://caso 5, se coloca la figura morada en el tablero
					fig5 = 1;
					f5c1.x = 120;
					f5c1.y = 30;
					f5c2.x = 150;
					f5c2.y = 30;
					f5c3.x = 180;
					f5c3.y = 30;
					f5c4.x = 180;
					f5c4.y = 60;
					cuadrosFig.push(f5c1);//se almacena en el array
					cuadrosFig.push(f5c2);
					cuadrosFig.push(f5c3);
					cuadrosFig.push(f5c4);
					choque();//se verifica si al colocarse choco con otra figura, para asi saber que se perdio
					break;
				case 6://caso 6, se coloca la figura verde en el tablero
					fig6 = 1;
					f6c1.x = 150;
					f6c1.y = 30;
					f6c2.x = 180;
					f6c2.y = 30;
					f6c3.x = 120;
					f6c3.y = 60;
					f6c4.x = 150;
					f6c4.y = 60;
					cuadrosFig.push(f6c1);//se almacena en el array
					cuadrosFig.push(f6c2);
					cuadrosFig.push(f6c3);
					cuadrosFig.push(f6c4);
					choque();//se verifica si al colocarse choco con otra figura, para asi saber que se perdio
					break;
				case 7://caso 7, se coloca la figura naranja en el tablero
					fig7 = 1;
					f7c1.x = 120;
					f7c1.y = 30;
					f7c2.x = 150;
					f7c2.y = 30;
					f7c3.x = 150;
					f7c3.y = 60;
					f7c4.x = 180;
					f7c4.y = 60;
					cuadrosFig.push(f7c1);//se almacena en el array
					cuadrosFig.push(f7c2);
					cuadrosFig.push(f7c3);
					cuadrosFig.push(f7c4);
					choque();//se verifica si al colocarse choco con otra figura, para asi saber que se perdio
					break;
			}
			timer.start();
			stage.addEventListener(KeyboardEvent.KEY_DOWN, precionar);
			//stage.addEventListener(KeyboardEvent.KEY_UP, Soltar);
		}
		public function tiempo(event: TimerEvent): void {//timer que se repite cada cierta cantidad de milisegundos(varia por nivel)
			cuadrosFig[0].y += 30;//bajamos toda la figura un bloque
			cuadrosFig[1].y += 30;
			cuadrosFig[2].y += 30;
			cuadrosFig[3].y += 30;
			choque();//verificamos si choco con algun otro bloque
			if (cuadrosFig[0].y == 450 || cuadrosFig[1].y == 450 || cuadrosFig[2].y == 450 || cuadrosFig[3].y == 450) {//comparamos si se llego al limita
				colocar();//colocamos la figura y se ejecuta todo lo que conlleva 
				timer.stop();//detenemos el timer
				rdm=0;
				rdm = Math.random() * 7 + 1;
				stage.addEventListener(Event.ENTER_FRAME, Caida);
				stage.removeEventListener(KeyboardEvent.KEY_DOWN, precionar);//removemos el evenlistener a las teclas para ya no poder mover las figuras
			}
		}
		public function tiempo2(event: TimerEvent): void {//timer que se repite cada cierta cantidad de milisegundos(varia por nivel)
			sg++

			tiempo_txt.text=min+" m." + " " +sg+" s.";
			if (sg==60) {//comparamos si se llego al limita
				sg=0;
				min++
			}
		}


		public function precionar(event: KeyboardEvent): void {//funcion para las flechas del teclado
			//determinar la tecla izquierda: ASCII no. 37
			if (event.keyCode == 65) {//a
				//esta precionado, entonces movemos la figura un bloque a la izquierda
				cuadrosFig[0].x -= 30;
				cuadrosFig[1].x -= 30;
				cuadrosFig[2].x -= 30;
				cuadrosFig[3].x -= 30;
				//comparamos si se paso al limite
				if (cuadrosFig[0].x == 0 || cuadrosFig[1].x == 0 || cuadrosFig[2].x == 0 || cuadrosFig[3].x == 0) {
					cuadrosFig[0].x += 30;//si es asi entonces movemos la figura un bloque a la derecha 
					cuadrosFig[1].x += 30;
					cuadrosFig[2].x += 30;
					cuadrosFig[3].x += 30;
				}
				choqueXI();//verificamos si hay un bloque a la izquierda
			} else {
				if (event.keyCode == 87) {//w
					giro();//llamamos a la funcion de los giros
				} else {
					if (event.keyCode == 68) {//d
						cuadrosFig[0].x += 30;//movemos toda la figura 1 bloque a la derecha
						cuadrosFig[1].x += 30;
						cuadrosFig[2].x += 30;
						cuadrosFig[3].x += 30;
						//comparamos si se paso el limite
						if (cuadrosFig[0].x == 330 || cuadrosFig[1].x == 330 || cuadrosFig[2].x == 330 || cuadrosFig[3].x == 330) {
							cuadrosFig[0].x -= 30;//si es asi entonces movemos toda la figura un bloque a la izquierda
							cuadrosFig[1].x -= 30;
							cuadrosFig[2].x -= 30;
							cuadrosFig[3].x -= 30;
						}
						choqueXD();
					} else {
						if (event.keyCode == 83) {//s
							//aba = true;
							choque();//verificamos si choco con algun bloque
						//	if (aba == true && numtec == 1) {
								//if (cuadrosFig[0].y <= 420 && cuadrosFig[1].y <= 420 && cuadrosFig[2].y <= 420 && cuadrosFig[3].y <= 420) {
								cuadrosFig[0].y += 30;
								cuadrosFig[1].y += 30;
								cuadrosFig[2].y += 30;
								cuadrosFig[3].y += 30;
								//numtec = 0;
							}
							//comparamos si se paso el limite
							if (cuadrosFig[0].y == 480 || cuadrosFig[1].y == 480 || cuadrosFig[2].y == 480 || cuadrosFig[3].y == 480) {
								cuadrosFig[0].y -= 30;//si es asi entonces subimos toda la figura un bloque
								cuadrosFig[1].y -= 30;
								cuadrosFig[2].y -= 30;
								cuadrosFig[3].y -= 30;
								colocar();//colocamos la figura
								timer.stop();//detenemos el tiempo
								stage.removeEventListener(KeyboardEvent.KEY_DOWN, precionar);//hacemos que esta ya no pueda moverse
							}
							//}
						}
					}
				}
			}
		//}
		//================================================================================================================
		/*public function Soltar(event: KeyboardEvent): void {

			if (event.keyCode == 40) {
				aba = false;
				numtec = 1;
			}
		}*/

		//================================================================================================================
		public function Siguiente2(event: MouseEvent) {
			timer.stop();
			nextFrame();
		}
		function giro1() {//funcion de giro 1, verifica si al rotar la figura algun cuadro se salio del escenario por la parte izquierda
			for (i = 0; i < 4; i++) {//for que se repite 4 veces
				if (cuadrosFig[i].x < 30) {//comparamos si el cuadro actual se salio por la izquierda
					fuera = true;//si es asi hacemos true a fuera
				}
			}
			if (fuera == true) {//comparamos si fuera es true
				cuadrosFig[0].x += 30;//si es asi movemos toda la figura un bloque a la derecha
				cuadrosFig[1].x += 30;
				cuadrosFig[2].x += 30;
				cuadrosFig[3].x += 30;
			}
			fuera = false;//reseteamos fuera para evitar errores logicos
		}
		function giro2() {//funcion de giro 2, verifica si al rotar la figura algun cuadro se salio del escenario por la parte derecha
			for (i = 0; i < 4; i++) {//for que se repite 4 veces
				if (cuadrosFig[i].x > 300 && fuera == true) {//comparamos si el cuadro se salio por la izquierda y si alguno ya se habia salido antes
					fueraX2 = true;//si es asi entonces se salieron 2 cuadros asi que hacemos true a fueraX2 y falso a fuera
					fuera = false;
				} else {//si no
					if (cuadrosFig[i].x > 300) {//comparamos si un cuadro se salio
						fuera = true;//si es asi hacemos true a fuera
					}
				}
			}
			if (fueraX2 == true) {//comparamos si fueraX2 es true
				cuadrosFig[0].x -= 60;//si es asi recorremos toda la figura 2 bloques a la izquierda
				cuadrosFig[1].x -= 60;
				cuadrosFig[2].x -= 60;
				cuadrosFig[3].x -= 60;
			} else {//si no
				if (fuera == true) {//comparamos si fuera es igual a true-
					cuadrosFig[0].x -= 30;//si es asi entonces recorremos toda la figura 1 bloque a la izquierda
					cuadrosFig[1].x -= 30;
					cuadrosFig[2].x -= 30;
					cuadrosFig[3].x -= 30;
				}
			}
			fuera = false;
			fueraX2 = false;
		}
		function giros() {//funcion que contiene las 2 funciones de giro, se asigna a las funciones de estados, fue creada para ahorrar almenos 10 lineas de codigo
			giro1();
			giro2();
		}
		public function giro() {//funcion para realizar los giros
			switch (rdm) {//verificamos con que figura estamos tratando, este switch tiene 6 casos, son 7 figuras,pero una no rota asi que 7-1
				case 2://caso 2 figura azul
					switch (fig2) {//entramos a un switch dodne comparamos su estado de rotacion actual, 2 casos
						case 1://pasa al estado 2
							fig2 = 2;
							fig2C2();
							break;
						case 2://pasa al estado 1
							fig2 = 1;
							fig2C1();
							break;
					}
					break;
				case 3://caso 3 figura amarilla
					switch (fig3) {//comparamos su estado de rotacion actual, 4 estados
						case 1://pasa al estado 2
							fig3 = 2;
							fig3C2();
							break;
						case 2://pasa al estado 3
							fig3 = 3;
							fig3C3();
							break;
						case 3://pasa al estado 4
							fig3 = 4;
							fig3C4();
							break;
						case 4://pasa al estado 1
							fig3 = 1;
							fig3C1();
							break;
					}
					break;
				case 4://caso 4 figura roja
					switch (fig4) {//verificamos su estado de rotacion actual, 4 casos
						case 1://pasa al estado 2
							fig4 = 2;
							fig4C2();
							break;
						case 2://pasa al estado 3
							fig4 = 3;
							fig4C3();
							break;
						case 3://pasa al estado 4
							fig4 = 4;
							fig4C4();
							break;
						case 4://pasa al estado 1
							fig4 = 1;
							fig4C1();
							break;
					}
					break;
				case 5://caso 5 figura morada
					switch (fig5) {//verificamos su estado de rotacion actual, 4 casos
						case 1://pasa al estado 2
							fig5 = 2;
							fig5C2();
							break;
						case 2://pasa al estado 3
							fig5 = 3;
							fig5C3();
							break;
						case 3://pasa al estado 4
							fig5 = 4;
							fig5C4();
							break;
						case 4://pasa al estado 1
							fig5 = 1;
							fig5C1();
							break;
					}
					break;
				case 6://caso 6 figura verde
					switch (fig6) {//verificamos su estado de rotacion actual, 2 casos
						case 1://pasa al estado 2
							fig6 = 2;
							fig6C2();
							break;
						case 2://pasa al estado 1
							fig6 = 1;
							fig6C1();
							break;
					}
					break;
				case 7://caso 7 figura naranja
					switch (fig7) {//verificamos su estado de rotacion actual, 2 casos
						case 1://pasa al estado 2
							fig7 = 2;
							fig7C2();
							break;
						case 2://pasa al estado 1
							fig7 = 1;
							fig7C1();
							break;
					}
					break;
			}
		}
		//Las funciones de Figura n son funciones que contienen los cambios en los ejes x y y necesarios para rotar las figuras
		//en cada uno de ellos se mueven los bloques de la figura al rededor de un bloque nucleo
		//en todas se llama a la funcion giros
		//en algunas se llaman las funciones elevar y bajar
		//===========================Figura 2============================
		public function fig2C1() {
			cuadrosFig[0].x -= 30;
			cuadrosFig[1].y += 30;
			cuadrosFig[2].x += 30;
			cuadrosFig[2].y += 60;
			cuadrosFig[3].x += 60;
			cuadrosFig[3].y += 90;
			giros();
		}
		public function fig2C2() {
			cuadrosFig[0].x += 30;
			cuadrosFig[1].y -= 30;
			cuadrosFig[2].x -= 30;
			cuadrosFig[2].y -= 60;
			cuadrosFig[3].x -= 60;
			cuadrosFig[3].y -= 90;
			giros();
		}
		//===========================Figura 3============================
		public function fig3C1() {
			cuadrosFig[0].x += 30;
			cuadrosFig[0].y -= 30;
			cuadrosFig[1].x -= 30;
			cuadrosFig[1].y -= 30;
			cuadrosFig[3].x += 30;
			cuadrosFig[3].y += 30;
			bajar();
			giros();
		}
		public function fig3C2() {
			cuadrosFig[0].x += 30;
			cuadrosFig[0].y += 30;
			cuadrosFig[1].x += 30;
			cuadrosFig[1].y -= 30;
			cuadrosFig[3].x -= 30;
			cuadrosFig[3].y += 30;
			elevar();
			giros();
		}
		public function fig3C3() {
			cuadrosFig[0].x -= 30;
			cuadrosFig[0].y += 30;
			cuadrosFig[1].x += 30;
			cuadrosFig[1].y += 30;
			cuadrosFig[3].x -= 30;
			cuadrosFig[3].y -= 30;
			giros();
		}
		public function fig3C4() {
			cuadrosFig[0].x -= 30;
			cuadrosFig[0].y -= 30;
			cuadrosFig[1].x -= 30;
			cuadrosFig[1].y += 30;
			cuadrosFig[3].x += 30;
			cuadrosFig[3].y -= 30;
			giros();
		}
		//===========================Figura 4============================
		public function fig4C1() {
			cuadrosFig[0].x -= 30;
			cuadrosFig[0].y -= 30;
			cuadrosFig[2].x += 30;
			cuadrosFig[2].y += 30;
			cuadrosFig[3].x -= 60;
			giros();
		}
		public function fig4C2() {
			cuadrosFig[0].x += 30;
			cuadrosFig[0].y -= 30;
			cuadrosFig[2].x -= 30;
			cuadrosFig[2].y += 30;
			cuadrosFig[3].y -= 60;
			giros();
		}
		public function fig4C3() {
			cuadrosFig[0].x += 30;
			cuadrosFig[0].y += 30;
			cuadrosFig[2].x -= 30;
			cuadrosFig[2].y -= 30;
			cuadrosFig[3].x += 60;
			giros();
		}
		public function fig4C4() {
			cuadrosFig[0].x -= 30;
			cuadrosFig[0].y += 30;
			cuadrosFig[2].x += 30;
			cuadrosFig[2].y -= 30;
			cuadrosFig[3].y += 60;
			giros();
		}
		//===========================Figura 5============================
		public function fig5C1() {
			cuadrosFig[0].x -= 30;
			cuadrosFig[0].y -= 30;
			cuadrosFig[2].x += 30;
			cuadrosFig[2].y += 30;
			cuadrosFig[3].y += 60;
			giros();
		}
		public function fig5C2() {
			cuadrosFig[0].x += 30;
			cuadrosFig[0].y -= 30;
			cuadrosFig[2].x -= 30;
			cuadrosFig[2].y += 30;
			cuadrosFig[3].x -= 60;
			giros();
		}
		public function fig5C3() {
			cuadrosFig[0].x += 30;
			cuadrosFig[0].y += 30;
			cuadrosFig[2].x -= 30;
			cuadrosFig[2].y -= 30;
			cuadrosFig[3].y -= 60;
			giros();
		}
		public function fig5C4() {
			cuadrosFig[0].x -= 30;
			cuadrosFig[0].y += 30;
			cuadrosFig[2].x += 30;
			cuadrosFig[2].y -= 30;
			cuadrosFig[3].x += 60;
			giros();
		}
		//===========================Figura 6============================
		public function fig6C1() {
			cuadrosFig[0].x -= 30;
			cuadrosFig[0].y -= 30;
			cuadrosFig[1].y -= 60;
			cuadrosFig[2].x -= 30;
			cuadrosFig[2].y += 30;
			bajar();
			giros();
		}
		public function fig6C2() {
			cuadrosFig[0].x += 30;
			cuadrosFig[0].y += 30;
			cuadrosFig[1].y += 60;
			cuadrosFig[2].x += 30;
			cuadrosFig[2].y -= 30;
			elevar();
			giros();
		}
		//===========================Figura 7============================
		public function fig7C1() {
			cuadrosFig[0].x -= 60;
			cuadrosFig[1].x -= 30;
			cuadrosFig[1].y -= 30;
			cuadrosFig[3].x += 30;
			cuadrosFig[3].y -= 30;
			bajar();
			giros();
		}
		public function fig7C2() {
			cuadrosFig[0].x += 60;
			cuadrosFig[1].x += 30;
			cuadrosFig[1].y += 30;
			cuadrosFig[3].x -= 30;
			cuadrosFig[3].y += 30;
			elevar();
			giros();
		}
		//===========================Evitar que la figura baje============================
		//Esta funcion se llama en cada caso de cada figura
		public function elevar() {//funcion para elevar un bloque a la figura en caso de que su rotacion la haya hecho bajar
			cuadrosFig[0].y -= 30;//subimos toda la figura un bloque
			cuadrosFig[1].y -= 30;
			cuadrosFig[2].y -= 30;
			cuadrosFig[3].y -= 30;
		}
		public function bajar() {//funcion para bajar un bloque a la figura en caso de volver al estado elevado un bloque
			cuadrosFig[0].y += 30;//bajamos toda la figura un bloque
			cuadrosFig[1].y += 30;
			cuadrosFig[2].y += 30;
			cuadrosFig[3].y += 30;
		}
		//stage.addChild(jue);
		//Colocar cuadros imaginarios
		public function colocar() {//funcion que colocara copias de las figuras con addchild en donde terminaron
			perdio();//verificamos si se perdio
			sumarFila();//sumamos puntos a las filas
			switchAdd();//actualizamos el cuadrito a colocar
			c.x = cuadrosFig[0].x;//posicionamos el cuadro en x
			c.y = cuadrosFig[0].y;//posicionamos el cuadro en y
			sumarAArray();//agregamos todo al array
			jue.addChild(c)//colocamos el cuadro en el escenario
			//los ultimos 4 pasos se hacen 3 veces mas
			switchAdd();
			c.x = cuadrosFig[1].x;
			c.y = cuadrosFig[1].y;
			sumarAArray();
			jue.addChild(c);
			switchAdd();
			c.x = cuadrosFig[2].x;
			c.y = cuadrosFig[2].y;
			sumarAArray();
			jue.addChild(c);
			switchAdd();
			c.x = cuadrosFig[3].x;
			c.y = cuadrosFig[3].y;
			sumarAArray();
			jue.addChild(c);
			//sacamos del tablero a la figura que caia
			cuadrosFig[0].x = -300;
			cuadrosFig[1].x = -300;
			cuadrosFig[2].x = -300;
			cuadrosFig[3].x = -300;
			barraCompleta();//verificamos si se completo alguna fila
			cuadrosFig.length = 0;//reseteamos el array que contiene a la figura que cae
		}
		//var pos:int=0;
		public function switchAdd() {//funcion que generara otro cuadro de la figura en juego
			switch (rdm) {//switch que auda a saber de que figura debemos generar un nuevo cuadro
				case 1://caso 1, generara nuevo bloque rojo
					c = new c1();
					break;
				case 2://caso 2, generara nuevo bloque azul
					c = new c2();
					break;
				case 3://caso 3, generara nuevo bloque amarillo
					c = new c3();
					break;
				case 4://caso 4, generara nuevo bloque rosa
					c = new c4();
					break;
				case 5://caso 5, generara nuevo bloque morado
					c = new c5();
					break;
				case 6://caso 6, generara nuevo bloque verde
					c = new c6();
					break;
				case 7://caso 7, generara nuevo bloque naranja
					c = new c7();
					break;
			}
		}
		public function sumarAArray() {//funcion que agrega los cuadros añadidos con addchild y sus posiciones a arrays
			//se pushea la instancia, la posicion en x y la posicion en y
			juego.push(c);
			juegoPosX.push(c.x);
			juegoPosY.push(c.y);
		}
		function choque() {//funcion para saber si se choco con otra figura mientras se cae
			for (j = 0; j < juego.length; j++) {//for que se repite tantas veces como bloques en el escenario
				//comparamos si algun bloque esta chocando con otro ya colocado
				if ((cuadrosFig[0].y + 30 == juegoPosY[j] && cuadrosFig[0].x == juegoPosX[j]) || (cuadrosFig[1].y + 30 == juegoPosY[j] && cuadrosFig[1].x == juegoPosX[j]) || (cuadrosFig[2].y + 30 == juegoPosY[j] && cuadrosFig[2].x == juegoPosX[j]) || (cuadrosFig[3].y + 30 == juegoPosY[j] && cuadrosFig[3].x == juegoPosX[j])) {
					chocoy = true;//si es asi entonces hacemos true a chocoy 
				}
			}
			if (chocoy == true) {//comparamos chocoy, si es true ya choco
				timer.stop();//detenemos el timer
				stage.removeEventListener(KeyboardEvent.KEY_DOWN, precionar);//hacemos que ya no se pueda mover ni girar ni bajar
				colocar();//llamamos a la funcion colocar
				chocoy = false;//volvemos a hacer false a chocoy
				rdm=0;
				rdm = Math.random() * 7 + 1;
				stage.addEventListener(Event.ENTER_FRAME, Caida);
			}
		}
		function choqueXI() {//funcion para saber si hay bloques a la izquierda para asi no empalmarse
			for (j = 0; j < juego.length; j++) {//for que se repite tantas veces como cuadros en el escenario
				//comparamos si alguno de los cuadros de la figura se empalmo con un cuadro que ya estuviera
				if ((cuadrosFig[0].y == juegoPosY[j] && cuadrosFig[0].x == juegoPosX[j]) || (cuadrosFig[1].y == juegoPosY[j] && cuadrosFig[1].x == juegoPosX[j]) || (cuadrosFig[2].y == juegoPosY[j] && cuadrosFig[2].x == juegoPosX[j]) || (cuadrosFig[3].y == juegoPosY[j] && cuadrosFig[3].x == juegoPosX[j])) {
					//si es asi entonces choco al ir a la izquierda
					chocoy = true;//hacemos true a chocoy
				}
			}
			if (chocoy == true) {//comparamos si chocoy es true
				cuadrosFig[0].x += 30;//si es asi movemos toda la figura un bloque a laderecha
				cuadrosFig[1].x += 30;
				cuadrosFig[2].x += 30;
				cuadrosFig[3].x += 30;
				chocoy = false;//volvemos a hacer false a chocoy
			}
		}
		function choqueXD() {//funcion para saber si hay bloques a la derecha para asi no empalmarse
			for (j = 0; j < juego.length; j++) {//for que se repite tantas veces como cuadros en el escenario
				//comparamos si alguno de los cuadros de la figura se empalmo con un cuadro que ya estuviera
				if ((cuadrosFig[0].y == juegoPosY[j] && cuadrosFig[0].x == juegoPosX[j]) || (cuadrosFig[1].y == juegoPosY[j] && cuadrosFig[1].x == juegoPosX[j]) || (cuadrosFig[2].y == juegoPosY[j] && cuadrosFig[2].x == juegoPosX[j]) || (cuadrosFig[3].y == juegoPosY[j] && cuadrosFig[3].x == juegoPosX[j])) {
					//si es asi entonces choco al ir a la derecha
					chocoy = true;//hacemos true a chocoy
				}
			}
			if (chocoy == true) {//comparamos si chocoy es true
				cuadrosFig[0].x -= 30;//si es asi movemos toda la figura un bloque a la izquierda
				cuadrosFig[1].x -= 30;
				cuadrosFig[2].x -= 30;
				cuadrosFig[3].x -= 30;
				chocoy = false;//volvemos a hacer false a chocoy
			}
		}
		function sumarFila() {//funcion para ir sumando puntos a las filas
			timer.stop();//detenemos el tiempo
			for (i = 0; i < cuadrosFig.length; i++) {//for que se repite 4 veces
				altura = cuadrosFig[i].y;//altura sera igual a la posicion en y del cuadro actual
				switch (altura) {//switch que compara altura, dependiento del caso le sumara 1 punto a una de las 15 filas
					case 30:
						filas[0] += 1;
						trace("15: " + filas[0]);
						break;
					case 60:
						filas[1] += 1;
						trace("14: " + filas[1]);
						break;
					case 90:
						filas[2] += 1;
						trace("13: " + filas[2]);
						break;
					case 120:
						filas[3] += 1;
						trace("12: " + filas[3]);
						break;
					case 150:
						filas[4] += 1;
						trace("11: " + filas[4]);
						break;
					case 180:
						filas[5] += 1;
						trace("10: " + filas[5]);
						break;
					case 210:
						filas[6] += 1;
						trace("9: " + filas[6]);
						break;
					case 240:
						filas[7] += 1;
						trace("8: " + filas[7]);
						break;
					case 270:
						filas[8] += 1;
						trace("7: " + filas[8]);
						break;
					case 300:
						filas[9] += 1;
						trace("6: " + filas[9]);
						break;
					case 330:
						filas[10] += 1;
						trace("5: " + filas[10]);
						break;
					case 360:
						filas[11] += 1;
						trace("4: " + filas[11]);
						break;
					case 390:
						filas[12] += 1;
						trace("3: " + filas[12]);
						break;
					case 420:
						filas[13] += 1;
						trace("2: " + filas[13]);
						break;
					case 450:
						filas[14] += 1;
						trace("1: " + filas[14]);
						break;
				}
			}
			//al final se abrian asignado los puntos necesarios a las filas donde se colocaron cuadros, asi sabremos que ahi quedaron
		}
		function sumarFila2() {
			for (j = 0; j < juego.length; j++) {//for que se repite tantas veces como cuadros en el escenario
				altura = juegoPosY[j];//sltura sera igual a la posicion en y del cuadro actual
				switch (altura) {//switch que compara altura, dependiento del caso le sumara 1 punto a una de las 15 filas
					case 30:
						filas[0] += 1;
						trace("15: " + filas[0]);
						break;
					case 60:
						filas[1] += 1;
						trace("14: " + filas[1]);
						break;
					case 90:
						filas[2] += 1;
						trace("13: " + filas[2]);
						break;
					case 120:
						filas[3] += 1;
						trace("12: " + filas[3]);
						break;
					case 150:
						filas[4] += 1;
						trace("11: " + filas[4]);
						break;
					case 180:
						filas[5] += 1;
						trace("10: " + filas[5]);
						break;
					case 210:
						filas[6] += 1;
						trace("9: " + filas[6]);
						break;
					case 240:
						filas[7] += 1;
						trace("8: " + filas[7]);
						break;
					case 270:
						filas[8] += 1;
						trace("7: " + filas[8]);
						break;
					case 300:
						filas[9] += 1;
						trace("6: " + filas[9]);
						break;
					case 330:
						filas[10] += 1;
						trace("5: " + filas[10]);
						break;
					case 360:
						filas[11] += 1;
						trace("4: " + filas[11]);
						break;
					case 390:
						filas[12] += 1;
						trace("3: " + filas[12]);
						break;
					case 420:
						filas[13] += 1;
						trace("2: " + filas[13]);
						break;
					case 450:
						filas[14] += 1;
						trace("1: " + filas[14]);
						break;
				}
			}//al final se abrian asignado los puntos necesarios a las filas donde se colocaron cuadros, asi sabremos que ahi quedaron
		}
		function barraCompleta() {//funcion para eliminar las filas completadas
			for (i = 0; i < 15; i++) {//hacemos un for que se repite 15 veces
				contFilas += 30;//a la variable contFias le incrementamos 30, esto lo usaremos para identificar la posicion en y
				if (filas[i] >= 10) {//comparamos si filas en la posicion actual es igual o mayor a 10
					for (j = 0; j < juego.length; j++) {//si se cumple hacemos este for que se repite tantas veces como cuadros haya en el escenario
						if (juegoPosY[j] != contFilas) {//comparamos si la posicion de y es diferente a a la actual de contFilas
							//si es asi entonces el cuagro correspondiente no esta en la fila que se eliminara, asi que lo tomamos y guardamos en arrays auxiliares
							juegoAux.push(juego[j]);
							juegoPosXAux.push(juegoPosX[j]);
							juegoPosYAux.push(juegoPosY[j]);
						}
					}//lo anterior, en cuanto a logica ya elimino la fila completa
					for (j = 0; j < juego.length; j++) {//for que se repite tantas veces como cuadros en el tablero
						c = juego[j];//hacemos que c valga lo de juego en j
						trace("Hara el remove child");
						jue.removeChild(c);//removemos c
						trace("Hizo el remove child");
					}
					//reseteamos los arrays originales
					juego.length = 0;
					juegoPosX.length = 0;
					juegoPosY.length = 0;
					for (j = 0; j < juegoAux.length; j++) {//for que se repite tantas veces como cuadros restantes
						if (juegoPosYAux[j] < contFilas) {//si el cuadro esta arriba de la fila que se rompio
							juegoPosYAux[j] += 30;//entonces lo hacemos bajar
						}
						c = juegoAux[j];//asignamos los nuevos cuadros a c y los posicionamos con las nuevas posiciones
						c.x = juegoPosXAux[j];
						c.y = juegoPosYAux[j];
						sumarAArray();
						jue.addChild(c);//los volvemos a agregar al escenario
					}//aqui ya se habria eliminado fisicamente la fila completa
					for (j = 0; j < filas.length; j++) {//for que se repite 15 veces e inicialisa todas las filas en 0
						filas[j] = 0;
					}
					trace("se muestra antes de sumarFilas2");
					sumarFila2();//llamamos a la funcion sumarFila2
					trace("No se muestra antes de sumarFilas2: " + i);
					puntos += 100;//sumamos 100 puntos 
					puntos_txt.text = "" + puntos;//mostramos el puntaje actualizado
					//por si hay mas de una fila que romper, reseteamos todo lo de esta funcion	
					i = -1;
					contFilas = 0;
					juegoAux.length = 0;
					juegoPosXAux.length = 0;
					juegoPosYAux.length = 0;
				}
			}//cuando se haya terminado reseteamos todo
			contFilas = 0;
			juegoAux.length = 0;
			juegoPosXAux.length = 0;
			juegoPosYAux.length = 0;
		}
		//funcion que detectara cuando se pierde el juegp
		function perdio() {
			//for que compara los cuatro cuadros de la figura
			for (j = 0; j < cuadrosFig.length; j++) {//comparamos si los cuadros terminan su recorrido en x=30 o x=60
				if (cuadrosFig[j].y == 30 || cuadrosFig[j].y == 60) {//si es asi entonces hacemos true la variable perder
					trace("perdiste");
					perder = true;
				}
			}
			if (perder == true) {//comparamos si perder es igual a true, si es asi significa que se perdio
				timer.removeEventListener(TimerEvent.TIMER, tiempo);
				timer2.removeEventListener(TimerEvent.TIMER, tiempo2);
				perder = false;
				timer2.stop();
				rdm=0;
				stage.removeEventListener(Event.ENTER_FRAME, Caida);
				//nextFrame();
				for (j = 0; j < juego.length; j++) {//for que se repite tantas veces como cuadros en el tablero
						c = juego[j];//hacemos que c valga lo de juego en j
						trace("Hara el remove child");
						jue.removeChild(c);//removemos c
						trace("Hizo el remove child");
					}
				nextFrame();
				player2_txt.text="Jugador: "+jugador +", Tiempo: "+ min+" m." + " " +sg+" s."+", Puntos: "+ puntos;
				//texto2.text="Perdi2";
				stage.addEventListener(Event.ENTER_FRAME, Validarjug);
				//ml.send("multi2", "receptor1", player1_txt.text);
				//anterior_btn.addEventListener(MouseEvent.CLICK, Antes);
				stage.removeEventListener(KeyboardEvent.KEY_DOWN, precionar);
			}
		}
		public function Antes (event:MouseEvent):void{
			gotoAndStop(3);
		}
		public function Reglas(event: MouseEvent) {
			trans_mc.visible=true;
			reglas_mc.visible=true;
			x_mc.visible=true;
			
		}
		function NivelBooleano() {
			trans_mc.visible=true;
			x2_mc.visible=true;
			lvl_mc.visible=true;
			lvls.visible=true;
			lvl1.visible=true;
			lvl2.visible=true;
			lvl3.visible=true;
			lvl4.visible=true;
		}
		public function Niveles(event: MouseEvent) {
			trans_mc.visible=true;
			x2_mc.visible=true;
			lvl_mc.visible=true;
			lvls.visible=true;
			lvl1.visible=true;
			lvl2.visible=true;
			lvl3.visible=true;
			lvl4.visible=true;
		}
		public function Cerrar(event: MouseEvent) {
			CerrarTodo();
		}
		function CerrarTodo() {
			trans_mc.visible=false;
			reglas_mc.visible=false;
			x_mc.visible=false;
			x2_mc.visible=false;
			lvl_mc.visible=false;
			lvls.visible=false;
			lvl1.visible=false;
			lvl2.visible=false;
			lvl3.visible=false;
			lvl4.visible=false;
		}
		public function Nvl1(event: MouseEvent) {
			velocidad=800;
			timer = new Timer(velocidad, tmp);
			nivelBool=true;
			CerrarTodo();
			
		}
		public function Nvl2(event: MouseEvent) {
			velocidad=500;
			timer = new Timer(velocidad, tmp);
			nivelBool=true;
			CerrarTodo();
		}
		public function Nvl3(event: MouseEvent) {
			velocidad=400;
			timer = new Timer(velocidad, tmp);
			nivelBool=true;
			CerrarTodo();
		}
		public function Nvl4(event: MouseEvent) {
			velocidad=200;
			timer = new Timer(velocidad, tmp);
			nivelBool=true;
			CerrarTodo();
		}
		public function Siguiente4(event: MouseEvent) {
			if (Sjugador==true){
				gotoAndStop(3);
				timer2.start();
				stage.focus=this;
				stage.addEventListener(Event.ENTER_FRAME, Caida);//====================================
				rdm = Math.random() * 7 + 1;
				siguiente_btn2.addEventListener(MouseEvent.CLICK, Siguiente2);
				timer.addEventListener(TimerEvent.TIMER, tiempo);
				timer2.addEventListener(TimerEvent.TIMER, tiempo2);
				//stage.addEventListener(KeyboardEvent.KEY_DOWN, precionar);
				stage.addChild(jue);
			}
		}
		public function Guardar(event: MouseEvent) {
			if (Gjugador==true){
				jugador.push(jugador_txt.text);
				trace(jugador);
				Gjugador=false;
				Sjugador=true;
				guardar_btn2.visible=true;
				guardar_btn.visible=false;
			}
		}
		public function Antes3(event: MouseEvent) {
			gotoAndStop(2);
			jugar_btn.addEventListener(MouseEvent.CLICK, Jugar);
			reglas_btn.addEventListener(MouseEvent.CLICK,Reglas);
			niveles_btn.addEventListener(MouseEvent.CLICK,Niveles);
			x_mc.addEventListener(MouseEvent.CLICK,Cerrar);
			x2_mc.addEventListener(MouseEvent.CLICK,Cerrar);
			lvl1.addEventListener(MouseEvent.CLICK,Nvl1);
			lvl2.addEventListener(MouseEvent.CLICK,Nvl2);
			lvl3.addEventListener(MouseEvent.CLICK,Nvl3);
			lvl4.addEventListener(MouseEvent.CLICK,Nvl4);
			trans_mc.visible=false;
			reglas_mc.visible=false;
			x_mc.visible=false;
			x2_mc.visible=false;
			lvl_mc.visible=false;
			lvls.visible=false;
			lvl1.visible=false;
			lvl2.visible=false;
			lvl3.visible=false;
			lvl4.visible=false;
		}
		public function receptor2 (e1:String){
			//if(jug2b==true){
				player1_txt.text=e1;
			//}else{
				//player2_txt.text=e1;
			//}
		}
		/*public function preceptor2 (event:int){
			if(tjug1 > tjug2){
				jug2b=true;
			}else{
				jug2b=false;
			}
		}*/
		public function Validarjug (event:Event){
			ml.send("multi2", "receptor1", player2_txt.text);
			//ml.send("multi2", "receptor1", tjug2);
		}
	}

}