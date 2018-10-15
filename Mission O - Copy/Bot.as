package 
{

	import flash.display.MovieClip;
	import flash.display.Loader;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	import flash.display.*;
	import flash.events.*;
	import flash.media.*;
	import flash.net.*;
	import flash.text.*;
	import flash.system.System;
	import flash.system.Security;
	import flash.system.SecurityDomain;
	import flash.display.Stage;
	import flash.text.TextField;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.ui.Keyboard;
	import flash.display.Sprite;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.GlowFilter;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.accessibility.Accessibility;

	public class Bot extends MovieClip
	{
		public var unixtime:int;
		public var ctime1:String;
		public var number:int = 0;
		public var timer:Timer = new Timer(500); 
		private var alertnow:AlertNow;
		public var lang65:String = "en";
		public var rest:String = "";
        public var user1337s:Array
		public function Bot()
		{

			// constructor code
			addFrameScript(0,  frame1, 1,  frame2,2,frame3,3,frame4);
			trace(new Date().getTime());
			ctime1 = toTimeCode(new Date().getTime());
			trace(ctime1);
		}
		public function frame1()
		{
			stop();
			speak("Welcome.",lang65);
			ww.text = "Server time:" + ctime1;

			tb.addEventListener(flash.events.MouseEvent.CLICK, tbv);
			function tbv(e:MouseEvent)
			{
				lang65 = "pt";
				trace(lang65);
				//portugese

			}

			tb1.addEventListener(flash.events.MouseEvent.CLICK, tbv1);
			function tbv1(e:MouseEvent)
			{
				lang65 = "ja";
				trace(lang65);
			}

			tb2.addEventListener(flash.events.MouseEvent.CLICK, tbv2);
			function tbv2(e:MouseEvent)
			{
				lang65 = "ca";
				trace(lang65);
			}

			tb3.addEventListener(flash.events.MouseEvent.CLICK, tbv3);
			function tbv3(e:MouseEvent)
			{
				lang65 = "en";
				trace(lang65);
			}

			ok.addEventListener(flash.events.MouseEvent.CLICK, noobslist);
			function noobslist(e:MouseEvent)
			{
				if (pass.text == "1337")
				{
					gotoAndStop(2);
				}
				else
				{
					speak("YOU are not Mr.ALLEN",lang65);

				}
			}

		}
		public function frame2()
		{
			stop();
			input.text = "";
			stage.addEventListener(KeyboardEvent.KEY_DOWN, noobslist2);

			//haha.addEventListener(flash.events.MouseEvent.CLICK, noobslist2);
			function noobslist2(e:KeyboardEvent)
			{
				
				if (e.keyCode == Keyboard.ENTER){
					 Adetails.visible=false;
				output.text ="decrypting my brain....";
				rest = input.text;
				if (rest.indexOf("tellme about") == 0)
				{
    var wordArray:Array = rest.split(/\W+/g);
    trace(wordArray.length);
	var finalmath=wordArray.length-1;
	trace(finalmath);
	var finalname = "";
	for(var i=2;i<=finalmath;i++){
		
		 finalname = finalname+wordArray[i]+" ";
		}
		trace(finalname+"yoo");
		var ldr22:URLLoader = new URLLoader();
		ldr22.load(new URLRequest("http://www.theaudiodb.com/api/v1/json/1/search.php?s="+finalname));
		ldr22.addEventListener(Event.COMPLETE,talk22);
				function talk22(event1:Event)
				{
					
					//trace(ldr22.data);
					okk1(ldr22.data);
				}
		//Adele
      }
				else{
				//speak(input.text,lang65);
				trace("I said:"+input.text);
				var ldr:URLLoader = new URLLoader();
				ldr.load(new URLRequest("http://blog.program-o.com/chat.php?say="+rest));
				ldr.addEventListener(Event.COMPLETE,talk);}}
				function talk(event1:Event)
				{
					
					//trace(ldr.data);
					okk(ldr.data);
				}
				}

		}
		public function frame3()
		{
			
			speak("Automatic Sensing mode-ON ",lang65);
			


    timer.addEventListener(TimerEvent.TIMER, timerHandler);
    timer.start();


}
public function timerHandler(event:TimerEvent):void{        
    if(timer.currentCount % 2 == 0){
        text1.alpha = 0.2;             // you can use text_filed.visible = false;
    } else {
        text1.alpha = 1;               // you can use text_filed.visible = true;
        number = Math.floor(Math.random() * 9) + 1;      
        text1.text = String("Detected-"+number+" Unidentified material's");   // you can also write it : number.toString();   
    }

}
public function frame4()
		{
			
			aohv.addEventListener(flash.events.MouseEvent.CLICK, noobslist22);
			function noobslist22(e:MouseEvent)
			{
			speak("Thank you ,Judge's",lang65);
			}
			
			
			
			
			 timer.removeEventListener(TimerEvent.TIMER, timerHandler);
woah50.text =ctime1;
				}
				public function okk1(mess:String):void
				{
					var str:String = mess;
					var json = JSON.parse(str);
					user1337s = json.data;
					// user1337s= myObj.data;
					

	                 
					trace("ID:"+json.artists[0].strArtistThumb)
					speak("Details downloaded",lang65);
					input.text ="";
					var fbpic = json.artists[0].strArtistThumb;
					var photo = new flash.display.Loader();
					 photo.contentLoaderInfo.addEventListener(Event.COMPLETE, resizeImage);
                    photo.load(new flash.net.URLRequest(fbpic));
                    Adetails.visible=true;
			        Adetails.picwhere.addChild(photo);
			function resizeImage(evt:Event):void {
 photo.width = 45;
 photo.height = 40;
}
			

			Adetails.name3.text=json.artists[0].strArtist+"  [ "+json.artists[0].idArtist+" ]";
			trace("ID:"+json.artists[0].strArtistThumb)
			Adetails.gen3.text="Gender:"+json.artists[0].strGender;
			Adetails.abt3.text="About:"+json.artists[0].strBiographyEN;
			Adetails.stl3.text="Style:"+json.artists[0].strStyle;
					

				}
		public function okk(mess:String):void
				{
					var str:String = mess;
					var json = JSON.parse(str);
					trace("ID:"+json.convo_id)
					var okt = json.botsay;
					var removeHtmlRegExp:RegExp = new RegExp("<[^<]+?>", "gi");
                    okt = okt.replace(removeHtmlRegExp, "");
					var okt1 = okt;
					var removeHtmlRegExp1:RegExp = new RegExp("Elizabeth", "gi");
					var removeHtmlRegExp2:RegExp = new RegExp("Program-O", "gi");
					var removeHtmlRegExp3:RegExp = new RegExp("May 4th 2011", "gi");
					
					okt1 = okt1.replace(removeHtmlRegExp1,"Allen");
					okt1 = okt1.replace(removeHtmlRegExp2,"JARVIS");
					okt1 = okt1.replace(removeHtmlRegExp3,"Nov 27th 2016");
                    trace("Bot said:"+okt1);
					input.text ="";
					speak(okt1,lang65);
					output.text = okt1;

				}
		public function toTimeCode(milliseconds:Number):String
		{
			var seconds:int = Math.floor((milliseconds/1000) % 60);
			var strSeconds:String = (seconds < 10) ? ("0" + String(seconds)):String(seconds);
			var minutes:int = Math.round(Math.floor((milliseconds/1000)/60));
			var strMinutes:String = (minutes < 10) ? ("0" + String(minutes)):String(minutes);
			var strMilliseconds:String = milliseconds.toString();
			strMilliseconds = strMilliseconds.slice(strMilliseconds.length - 3,strMilliseconds.length);
			var timeCode:String = strMinutes + ":" + strSeconds + ':' + strMilliseconds;
			//blehtime1 = Number(strMinutes);
			return timeCode;
		}
		public function alert(mess:String):void
		{
			alertnow = new (AlertNow);
			alertnow.x = 125;
			alertnow.y = 149;
			//Tweener.addTween(alertnow,{x:stage.stageWidth / 4, y:stage.stageHeight / 4, alpha:1, time:0.4, transition:"easeOutSine"});
			addChild(alertnow);
			alertnow.message.text = String(mess);
			alertnow.understood.addEventListener(MouseEvent.CLICK, function(e:MouseEvent):void
			{
			removeChild(MovieClip(e.target.parent));
			});
		}
		public function speak(messe:String,lang:String):void
		{
			var req:URLRequest= new URLRequest("https://api.microsofttranslator.com/v2/http.svc/Speak?language="+lang65+"&format=audio/mp3&options=MinSize&appid=TDkU8Dj8OSHvx4BH7FtixcF4QiHfLLm8N7VtaTEyPzkY*&text=" + messe);

			var snd:Sound = new Sound(req);
			snd.play();
		}
	}
}
