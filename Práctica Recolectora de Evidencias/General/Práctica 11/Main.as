package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	
	public class Main extends MovieClip {
		var num1:Number;
		var num2:Number;
		var num3:Number;
		var num4:Number;
		var verdad:Boolean;
		public function Main() {
			calc_btn.addEventListener(MouseEvent.CLICK,Calcular);
			var CalT:Tween=new Tween(calc_btn,"y",Strong.easeOut,-1000,264.6,2,true);
		}
		public function Calcular(event:MouseEvent): void{
			gotoAndStop(2);
			verdad=false;
			calcular1_btn.addEventListener(MouseEvent.CLICK,CalcularNum);
			borrar1_btn.addEventListener(MouseEvent.CLICK,Borrar);
			volver1_btn.addEventListener(MouseEvent.CLICK,Volver);
		}
		public function CalcularNum(MouseEvent): void{
			num1=Number(num1_txt.text);
			num2=Number(num2_txt.text);
			num3=Number(num3_txt.text);
			num4=Number(num4_txt.text);
			if (isNaN((num1)||(num2)||(num3)||(num4))){
				verdad=false;
				ad.text="Ingrese Número Válido";
			}else{
				verdad=true;
				
			}
			if (verdad=true){
				if ((num1%2==0)&&(num2%2==0)&&(num3%2==0)&&(num4%2==0)){
					ad.text="";
					res_txt.text=String(num1+num2+num3+num4);
				}else{
					ad.text="";
					res_txt.text=String((num1+num2+num3+num4)/4);
				}
				if ((num1<0)||(num2<0)||(num3<0)||(num4<0)){
					ad.text="";
					res_txt.text=String(num1-num2-num3-num4);
				}
			}
		}
		public function Borrar(event:MouseEvent): void{
			num1_txt.text="";
			num2_txt.text="";
			num3_txt.text="";
			num4_txt.text="";
			//res_txt.text="";
		}
		public function Volver(event:MouseEvent): void{
			gotoAndStop(1);
			calc_btn.addEventListener(MouseEvent.CLICK,Calcular);
		}
	}
	
}
