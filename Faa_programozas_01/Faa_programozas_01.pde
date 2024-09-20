//int helyett floatra irod att akk nem kell round fugg + veletlenszerubb a mozgas

int nc = 40;
float [] cx = new float[nc];
//float cx =0; tort szamokat tartalmaz
float [] vx = new float[nc];
float [] cy = new float[nc];
float [] vy = new float[nc];

/*
cx[0] = width / 2;
   cx[0] = height / 2;
   vx[0] = 5;
   vy[0] = 3;
   */

/*
int cx = 4;
int vx = 5;
int cy = 0;
int vy = 5;
*/

/* int tomb legfelso sor, olyan mint egy fiokos szekreny,
nem kell majd lemasolni ujra az osszes reszet a kodnak ha ,megegy golyot szeretnek
*/

/*
Ha masik dobozts szeretnek

int cx1 = 0;
//float cx =0; tort szamokat tartalmaz
int vx1 = 5;
int cy1 = 0;
int vy1 = 5;
*/

/* bizonyos szam nagysagnal millios nagysag ha a tort mar
nem ervenyesul mert a 0.001 pl mar nem nagyobb igy a
szamitogep nem hasznalja */

void setup()
{
  size(800,600); //tedd at 3Dre GPU renderel gyorsabb csak melegszik
  surface.setResizable(true);
  for(int i = 0; i < nc; i = i + 1)
  {
   cx[i] = width / 2;
   cx[i] = height / 2;
   vx[i] = round(random(15));
   vy[i] = round(random(13)); // a random fugg tortszammal ter vissza ezert kell a round ami kerekiti az osszeget.                   
  }
  
}
void draw()
{
  background(0);
  
  //background(color(0,0,0)); ez lenne a hivatalos, elobb a color fugg. hajtja vegre utana a backgroundot
  for(int i = 0; i < nc; i = i + 1)
  {
  circle(cx[i],cy[i],40);
 // cx = cx + 1;
 cx[i] = cx[i] + vx[i];
 cy[i] = cy[i] + vy[i];
 
 if(cx[i] > width || cx[i] <0) vx[i] = vx[i] * -1;
 if(cy[i] > height || cy[i] <0) vy[i] = vy[i] * -1;
  }
 
 
 /*
 if(cx > width) vx = vx * -1;
 if(cx < 0) vx = vx * -1; // ha -1el szorzok egy szamot onmaga lesz
 */
 
 // if(cx > width) cx = 0  //kontrol strukturanak nevezzuk
  //akkor lesz a cx=0 ha a if() ben levo allitas igaz
  
  //circle(width / 2,height / 2,40);
  
  /*ez a kor fuggveny int egesz szam float tort
  kozep pont a ket elso koordinata az uccso az atmero
  by default feher a kor es van fekete korvonala is */
  
  /* a matematikai jeleket hivjuk operatornak amik ugyanazok
  mint a szamologepen, ha meno vagy nem osztolm el semmit
  hanam hagyod h a program szamoljon*/
  
  /* width es a height változok, mindig kozepre kerul a kor
  akarmekkorara valtoztatom meg az ablakot */
  
  /* ha mozgatni akarom a kort akk a ciklusok mozott kell egyet hozzaadni
  ezert hozunk letre egy "dobozt" a void setupm elott */
  
  // > és < is operator csak Boolean nem pedig aritmetikus
  
  
  
  
}
