boolean oben = true, tutorial=true, glocker=false, buttonmove=false, buttonmove2=false, karte_zeigen=false, karte_zeigen2=false, fertig=false, spamcheck=true;
PImage glocke, karte_1, karte_2, karte_3, karte_4, karte_5, karte_6, karte_7, karte_8, karte_9, karte_10, karte_11, karte_12, karte_13, karte_14, karte_15, karte_16, karte_hintergrund, bogen, spieler_1_gewonnen, spieler_2_gewonnen, background, kartenhintergrund_basis;
int spielerk1=0, spielerk2=0;
int summe1, summe2, glockensumme=0, zufall1, zufall2;
int kartenanzahl1=8, kartenanzahl2=8;
float x=400, x2=400;
int stapel=0;


static void main() {
}

void setup() {
  size(600, 600);
  frameRate(60);
  glocke= loadImage("glocke.png");
  karte_1= loadImage("karte_1.png");
  karte_2= loadImage("karte_2.png");
  karte_3= loadImage("karte_3.png");
  karte_4= loadImage("karte_4.png");
  karte_5= loadImage("karte_5.png");
  karte_6= loadImage("karte_6.png");
  karte_7= loadImage("karte_7.png");
  karte_8= loadImage("karte_8.png");
  karte_9= loadImage("karte_9.png");
  karte_10= loadImage("karte_10.png");
  karte_11= loadImage("karte_11.png");
  karte_12= loadImage("karte_12.png");
  karte_13= loadImage("karte_13.png");
  karte_14= loadImage("karte_14.png");
  karte_15= loadImage("karte_15.png");
  karte_16= loadImage("karte_16.png");
  karte_hintergrund= loadImage("karte_hintergrund.png");
  bogen= loadImage("bogen.png");
  spieler_1_gewonnen= loadImage("spieler_1_gewonnen.png");
  spieler_2_gewonnen= loadImage("spieler_2_gewonnen.png");
  background= loadImage("background.png");
  kartenhintergrund_basis= loadImage("kartenhintergrund_basis.png");
}

void draw() {
  glockeallgemein();
  image(background,0,0);
  kartenhintergrund_basis();
  move();
  image(glocke, 265, 265);
  bogen();
  spielerkarten1();
  spielerkarten2();
  kartenanzahl();
 // text1 ();
  gewonnen();
  tutorial();
}






void text1() {
  //textFont(1,10);
  if (tutorial==false) {
  textSize(50);
  fill(0, 408, 612);
  text(+stapel, 15, 313); 
  }
}


//tutorial

void texts() {
  //textFont(1,10);
  textSize(50);
  fill(0, 408, 612);
  text("Verstanden", 15, 313);
  
  
  textSize(30);
  fill(0, 408, 612);
  text("Keybinds:", 15, 25);
  
  textSize(20);
  fill(0, 408, 612);
  text("(Spieler oben)  Karte ziehen = a", 150, 20);
  
  textSize(20);
  fill(0, 408, 612);
  text("                Glocke drücken = f", 210, 40);
  
  textSize(20);
  fill(0, 408, 612);
  text("(Spieler unten) Karte ziehen = ä", 150, 60);
  
  textSize(20);
  fill(0, 408, 612);
  text("                Glocke drücken = j", 210, 80);
  
  textSize(30);
  fill(0, 408, 612);
  text("Prinzip:", 15, 125);
  
  textSize(20);
  fill(0, 408, 612);
  text("8 Karten/spieler", 150, 120);
  
  textSize(20);
  fill(0, 408, 612);
  text("Karten abwechselnd ziehen", 150, 140);
  
  textSize(30);
  fill(0, 408, 612);
  text("Glocke:", 15, 425);
  
  textSize(20);
  fill(0, 408, 612);
  text("5 Früchte von der selben Frucht = Glocke drücken", 145, 420);
  
  textSize(20);
  fill(0, 408, 612);
  text("->man bekommt 1 Karte von dem Gegner", 145, 440);
  
  textSize(20);
  fill(0, 408, 612);
  text("wenn man zu früh drückt verliert man eine Karte", 145, 460);
  
  textSize(20);
  fill(0, 408, 612);
  text("->die Karte bekommt der Gegner", 145, 480);
  
  
  
}



void tutorial() {
  if (tutorial==true) {
    
    image(background,0,0);
    fill(255, 0, 0);
    rect(10, 275, 250, 50);
    texts();
  }
}

//kartenhintergrund_basis
void kartenhintergrund_basis(){
  if (spielerk1==0 ) {
    image(kartenhintergrund_basis, 255, 50);
  }
  if (spielerk2==0 ) {
    image(kartenhintergrund_basis, 255, 390);
  }
}


//Kartengenerieren

void karten_ziehen1() {
  zufall1 = (int) Math.round(Math.random( )*3+1);
  switch (zufall1){
    case 1:{
      spielerk1 = (int) Math.round(Math.random( )*3+1);
      break;
    }
    case 2:{
      spielerk1 = (int) Math.round(Math.random( )*3+11);
      break;
    }
    case 3:{
      spielerk1 = (int) Math.round(Math.random( )*3+21);
      break;
    }
    case 4:{
      spielerk1 = (int) Math.round(Math.random( )*3+31);
      break;
    }
  }

}

void karten_ziehen2() {
  zufall2 = (int) Math.round(Math.random( )*3+1);
  switch (zufall2){
    case 1:{
      spielerk2 = (int) Math.round(Math.random( )*3+1);
      break;
    }
    case 2:{
      spielerk2 = (int) Math.round(Math.random( )*3+11);
      break;
    }
    case 3:{
      spielerk2 = (int) Math.round(Math.random( )*3+21);
      break;
    }
    case 4:{
      spielerk2 = (int) Math.round(Math.random( )*3+31);
      break;
    }
  }

}


//Kartenanzahl

void kartenanzahl() {
  //Kartenanzahloben
  if(kartenanzahl1==1 && karte_zeigen==false)
    {
      image(karte_hintergrund, x, 50);
    } else if (kartenanzahl1==1){
      image(karte_hintergrund, 410, 50);
    }
  if(kartenanzahl1==2 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, x+10, 50);
    } else if (kartenanzahl1==2){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
    }
  if(kartenanzahl1==3 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, x+20, 50);
    } else if (kartenanzahl1==3){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
    }
  if(kartenanzahl1==4 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, x+30, 50);
    } else if (kartenanzahl1==4){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
    }
  if(kartenanzahl1==5 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, x+40, 50);
    } else if (kartenanzahl1==5){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
    }
  if(kartenanzahl1==6 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, x+50, 50);  
    } else if (kartenanzahl1==6){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
    }
  if(kartenanzahl1==7 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, x+60, 50);
    } else if (kartenanzahl1==7){ 
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
    }
  if(kartenanzahl1==8 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, x+70, 50);
      
    } else if (kartenanzahl1==8){ 
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, 470, 50);
    }
  if(kartenanzahl1==9 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, x+80, 50);
    } else if (kartenanzahl1==9){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50); 
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
    }
  if(kartenanzahl1==10 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, x+90, 50);
    } else if (kartenanzahl1==10){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50); 
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
    }
  if(kartenanzahl1==11 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, x+100, 50);
    } else if (kartenanzahl1==11){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50); 
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
    }
  if(kartenanzahl1==12 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, x+110, 50);
    } else if (kartenanzahl1==12){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50); 
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, 510, 50);
    }
  if(kartenanzahl1==13 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, 510, 50);
      image(karte_hintergrund, x+120, 50);
    } else if (kartenanzahl1==13){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50); 
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, 510, 50);
      image(karte_hintergrund, 520, 50);
    }
  if(kartenanzahl1==14 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, 510, 50);
      image(karte_hintergrund, 520, 50);
      image(karte_hintergrund, x+130, 50);
    } else if (kartenanzahl1==14){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50); 
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, 510, 50);
      image(karte_hintergrund, 520, 50);
      image(karte_hintergrund, 530, 50);
    }
  if(kartenanzahl1==15 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, 510, 50);
      image(karte_hintergrund, 520, 50);
      image(karte_hintergrund, 530, 50);
      image(karte_hintergrund, x+140, 50);
    } else if (kartenanzahl1==15){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50); 
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, 510, 50);
      image(karte_hintergrund, 520, 50);
      image(karte_hintergrund, 530, 50);
      image(karte_hintergrund, 540, 50);
    }
  if(kartenanzahl1==16 && karte_zeigen==false)
    {
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50);
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, 510, 50);
      image(karte_hintergrund, 520, 50);
      image(karte_hintergrund, 530, 50);
      image(karte_hintergrund, 540, 50);
      image(karte_hintergrund, x+150, 50);
    } else if (kartenanzahl1==16){
      image(karte_hintergrund, 400, 50);
      image(karte_hintergrund, 410, 50);
      image(karte_hintergrund, 420, 50);
      image(karte_hintergrund, 430, 50);
      image(karte_hintergrund, 440, 50);
      image(karte_hintergrund, 450, 50);
      image(karte_hintergrund, 460, 50); 
      image(karte_hintergrund, 470, 50);
      image(karte_hintergrund, 480, 50);
      image(karte_hintergrund, 490, 50);
      image(karte_hintergrund, 500, 50);
      image(karte_hintergrund, 510, 50);
      image(karte_hintergrund, 520, 50);
      image(karte_hintergrund, 530, 50);
      image(karte_hintergrund, 540, 50);
      image(karte_hintergrund, 550, 50);
    }
  //Kartenanzahlunten
  if(kartenanzahl2==1 && karte_zeigen2==false)
    {
      image(karte_hintergrund, x2, 390);
    } else if (kartenanzahl2==1){
      image(karte_hintergrund, 410, 390);
    }
  if(kartenanzahl2==2 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, x2+10, 390);
    } else if (kartenanzahl2==2){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
    }
  if(kartenanzahl2==3 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, x2+20, 390);
    } else if (kartenanzahl2==3){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
    }
  if(kartenanzahl2==4 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, x2+30, 390);
    } else if (kartenanzahl2==4){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
    }
  if(kartenanzahl2==5 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, x2+40, 390);
    } else if (kartenanzahl2==5){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
    }
  if(kartenanzahl2==6 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, x2+50, 390);  
    } else if (kartenanzahl2==6){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
    }
  if(kartenanzahl2==7 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, x2+60, 390);
    } else if (kartenanzahl2==7){ 
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
    }
  if(kartenanzahl2==8 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, x2+70, 390);
      
    } else if (kartenanzahl2==8){ 
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, 470, 390);
    }
  if(kartenanzahl2==9 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, x2+80, 390);
    } else if (kartenanzahl2==9){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390); 
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
    }
  if(kartenanzahl2==10 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, x2+90, 390);
    } else if (kartenanzahl2==10){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390); 
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
    }
  if(kartenanzahl2==11 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, x2+100, 390);
    } else if (kartenanzahl2==11){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390); 
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
    }
  if(kartenanzahl2==12 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, x2+110, 390);
    } else if (kartenanzahl2==12){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390); 
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, 510, 390);
    }
  if(kartenanzahl2==13 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, 510, 390);
      image(karte_hintergrund, x2+120, 390);
    } else if (kartenanzahl2==13){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390); 
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, 510, 390);
      image(karte_hintergrund, 520, 390);
    }
  if(kartenanzahl2==14 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, 510, 390);
      image(karte_hintergrund, 520, 390);
      image(karte_hintergrund, x2+130, 390);
    } else if (kartenanzahl2==14){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390); 
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, 510, 390);
      image(karte_hintergrund, 520, 390);
      image(karte_hintergrund, 530, 390);
    }
  if(kartenanzahl2==15 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, 510, 390);
      image(karte_hintergrund, 520, 390);
      image(karte_hintergrund, 530, 390);
      image(karte_hintergrund, x2+140, 390);
    } else if (kartenanzahl2==15){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390); 
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, 510, 390);
      image(karte_hintergrund, 520, 390);
      image(karte_hintergrund, 530, 390);
      image(karte_hintergrund, 540, 390);
    }
  if(kartenanzahl2==16 && karte_zeigen2==false)
    {
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390);
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, 510, 390);
      image(karte_hintergrund, 520, 390);
      image(karte_hintergrund, 530, 390);
      image(karte_hintergrund, 540, 390);
      image(karte_hintergrund, x2+150, 390);
    } else if (kartenanzahl2==16){
      image(karte_hintergrund, 400, 390);
      image(karte_hintergrund, 410, 390);
      image(karte_hintergrund, 420, 390);
      image(karte_hintergrund, 430, 390);
      image(karte_hintergrund, 440, 390);
      image(karte_hintergrund, 450, 390);
      image(karte_hintergrund, 460, 390); 
      image(karte_hintergrund, 470, 390);
      image(karte_hintergrund, 480, 390);
      image(karte_hintergrund, 490, 390);
      image(karte_hintergrund, 500, 390);
      image(karte_hintergrund, 510, 390);
      image(karte_hintergrund, 520, 390);
      image(karte_hintergrund, 530, 390);
      image(karte_hintergrund, 540, 390);
      image(karte_hintergrund, 550, 390);
    }
}

//Karten(Früchte) Anzeigen

void spielerkarten1() {
  //1
  if (spielerk1==1 && karte_zeigen==true) {
    image(karte_1, 255, 50);
    
  }
  //2
  if (spielerk1==2 && karte_zeigen==true) {
    image(karte_2, 255, 50);
    
  }
  //3
  if (spielerk1==3 && karte_zeigen==true) {
    image(karte_3, 255, 50);
    
  }
  //4
  if (spielerk1==4 && karte_zeigen==true) {
    image(karte_4, 255, 50);
    
  }
  //5
  if (spielerk1==11 && karte_zeigen==true) {
    image(karte_5, 255, 50);
    
  }
  //6
  if (spielerk1==12 && karte_zeigen==true) {
    image(karte_6, 255, 50);
    
  }
  //7
  if (spielerk1==13 && karte_zeigen==true) {
    image(karte_7, 255, 50);
    
  }
  //8
  if (spielerk1==14 && karte_zeigen==true) {
    image(karte_8, 255, 50);
  }
  //9
  if (spielerk1==21 && karte_zeigen==true) {
    image(karte_9, 255, 50);
  }
  //10
  if (spielerk1==22 && karte_zeigen==true) {
    image(karte_10, 255, 50);
    
  }
  //11
  if (spielerk1==23 && karte_zeigen==true) {
    image(karte_11, 255, 50);
    
  }
  //12
  if (spielerk1==24 && karte_zeigen==true) {
    image(karte_12, 255, 50);
    
  }
  //13
  if (spielerk1==31 && karte_zeigen==true) {
    image(karte_13, 255, 50);
    
  }
  //14
  if (spielerk1==32 && karte_zeigen==true) {
    image(karte_14, 255, 50);
    
  }
  //15
  if (spielerk1==33 && karte_zeigen==true) {
    image(karte_15, 255, 50);
    
  }
  //16
  if (spielerk1==34 && karte_zeigen==true) {
    image(karte_16, 255, 50);
    
  }
}


void spielerkarten2() {
  //1
  if (spielerk2==1 && karte_zeigen2==true) {
    image(karte_1, 255, 390);
  }
  //2
  if (spielerk2==2 && karte_zeigen2==true) {
    image(karte_2, 255, 390);
  }
  //3
  if (spielerk2==3 && karte_zeigen2==true) {
    image(karte_3, 255, 390);
  }
  //4
  if (spielerk2==4 && karte_zeigen2==true) {
    image(karte_4, 255, 390);
  }
  //5
  if (spielerk2==11 && karte_zeigen2==true) {
    image(karte_5, 255, 390);
  }
  //6
  if (spielerk2==12 && karte_zeigen2==true) {
    image(karte_6, 255, 390);
  }
  //7
  if (spielerk2==13 && karte_zeigen2==true) {
    image(karte_7, 255, 390);
  }
  //8
  if (spielerk2==14 && karte_zeigen2==true) {
    image(karte_8, 255, 390);
  }
  //9
  if (spielerk2==21 && karte_zeigen2==true) {
    image(karte_9, 255, 390);
  }
  //10
  if (spielerk2==22 && karte_zeigen2==true) {
    image(karte_10, 255, 390);
  }
  //11
  if (spielerk2==23 && karte_zeigen2==true) {
    image(karte_11, 255, 390);
  }
  //12
  if (spielerk2==24 && karte_zeigen2==true) {
    image(karte_12, 255, 390);
  }
  //13
  if (spielerk2==31 && karte_zeigen2==true) {
    image(karte_13, 255, 390);
  }
  //14
  if (spielerk2==32 && karte_zeigen2==true) {
    image(karte_14, 255, 390);
  }
  //15
  if (spielerk2==33 && karte_zeigen2==true) {
    image(karte_15, 255, 390);
  }
  //16
  if (spielerk2==34 && karte_zeigen2==true) {
    image(karte_16, 255, 390);
  }
}


void move(){
  //obenmove
  if (x>256 && buttonmove==true){
  x=x-2;
  }
  if (x<257){
  karte_zeigen=true;
  x=400;
  oben=false;
  buttonmove=false;
  }
  //untenmove
  if (x2>256 && buttonmove2==true){
  x2=x2-2;
  }
  if (x2<257){
  karte_zeigen2=true;
  x2=400;
  oben=true;
  buttonmove2=false;
  }
}


//Button
boolean isMouseOver(int x, int y, int w, int h) {

  if (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h) {
    return true;
  }
  return false;
}


//glockensumme
void glockes() {
  glockensumme=spielerk1+spielerk2;
  //nur für Test
  //println(glockensumme);
}


//geweonnen
void gewonnen() {
  if (kartenanzahl1<1 && spamcheck==true) {
    println("Untere Spieler hat gewonnen");
    image(spieler_2_gewonnen, 0, 0);
  }
  if (kartenanzahl2<1 && spamcheck==false) {
    println("Obere Spieler hat gewonnen");
    image(spieler_1_gewonnen, 0, 0);
  }
}


boolean glockeaktivoben=false, glockeaktivunten=false;



//Glocke oben

void glocke1(){
  glockes();
  if (glockeaktivoben==true && glocker==true){
    if (glockensumme==5 || glockensumme==25 || glockensumme==45|| glockensumme==65){
    glockeaktivoben=false;
  kartenanzahl1 = kartenanzahl1 +1; //statt +1 könnte +stapel
  kartenanzahl2 = kartenanzahl2 -1;
  glocker=false;
 // stapel=0;
 } else if (glockeaktivoben==true && glocker==true){
  kartenanzahl1 = kartenanzahl1 -1;
  kartenanzahl2 = kartenanzahl2 +1;
  glockeaktivoben=false;
   }
  }
 }



//Glocke UNTEN

void glocke2(){
  glockes();
  if (glockeaktivunten==true && glocker==true){
   if (glockensumme==5 || glockensumme==25 || glockensumme==45|| glockensumme==65){
   glockeaktivunten=false;
  kartenanzahl2= kartenanzahl2 +1; //statt +1 könnte +stapel
  glocker= false;
 // stapel=0;
 } else if (glockeaktivunten==true && glocker==true){
  kartenanzahl1 = kartenanzahl1 +1;
  kartenanzahl2 = kartenanzahl2 -1;
  glockeaktivunten=false;
  }
 }
}



void glockeallgemein(){
  glocke1();
  glocke2();
}

void mousePressed() {
  if (isMouseOver(10, 275, 250, 50) ==true && tutorial==true) {
    tutorial=false;
  }
}











void keyPressed(){
  if (tutorial==false){
  if (key=='f'|| key=='F'){
   glockeaktivoben=true;
  }
   
 if (key=='j'|| key=='J'){
   glockeaktivunten=true;
  }
  
  
  //Spielerkarteziehen 1
 if (key=='a'||key=='A'){
   if (spamcheck==true  && oben == true ){
      karten_ziehen1();
      kartenanzahl1=kartenanzahl1-1;
      println("Sk1:  "+spielerk1);
      karte_zeigen=false;
      buttonmove=true;
      glocker=true;
      spamcheck=false;
     // stapel++;
   }
  }
  
   //Spielerkarteziehen 2
  if (key=='ä'||key=='Ä'){
     if (spamcheck==false && oben == false){
      karten_ziehen2();
      kartenanzahl2=kartenanzahl2-1;
      println("Sk2:  "+spielerk2);
      karte_zeigen2=false;
      buttonmove2=true;
      glocker=true;
      spamcheck=true;
     // stapel++;
     }
  }
  }
}





void bogen() {
  if (oben == true) {
    image(bogen, 170, 95);
  }
  if (oben==false) {
    image(bogen, 170, 435);
  }
}
