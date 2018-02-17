int motorOpe =0;

void mousePressed(){
  scaleBar.press(mouseX, mouseY);
}

void mouseReleased(){
  scaleBar.release();
}

void keyPressed(){

 switch(key){
   case 's':    // pressing 's' or 'S' will take a jpg of the processing window
     break;
   case 'S':
     saveFrame("heartLight-####.jpg");    // take a shot of that!
     break;
    case 'a': //モータ動く
    if(motorOpe==0){
      arduino2.analogWrite(in1Pin,Arduino.LOW);
      arduino2.digitalWrite(in2Pin,255);
     motorOpe = 1;
    }else if(motorOpe ==1){      //モータ止まる
       arduino2.analogWrite(in1Pin,Arduino.LOW);
       arduino2.digitalWrite(in2Pin,Arduino.LOW);
       motorOpe = 2;
    }else{
      arduino2.analogWrite(in1Pin,255);
      arduino2.digitalWrite(in2Pin,Arduino.LOW);
      motorOpe = 0;
    }
     break;
    //case 'd':
    // motorOpe = 1;
     //break;
    //case 'z':
    //motorOpe = 2 ;
    // break;
    case '1'://開始
     if(loopope == 1){
           loopope = 0;
            preBPM = 0;
               BPM = 0;
               IBI = 0;
         bibiriNum = 0;
         motorOpe = 2;
         loop();
      }else{//終了
           loopope = 1;
           background(0);
           text("あなたは" + bibiriNum + "回 ビビりました",width/2,height/2);
           if(bibiriNum == 0){
             text("菩薩レベル",width/2,height/2-50);
           }else if(bibiriNum > 0 && bibiriNum <= 3){
             text("普通レベル",width/2,height/2-50);
           }else if(bibiriNum > 3 && bibiriNum <= 9){
             text("ビビリレベル",width/2,height/2-50);
           }else{
             text("超ビビリレベル",width/2,height/2-50);
           }
           motorOpe = 2;
           noLoop();
      }
      break;
   default:
        break;
 }
 