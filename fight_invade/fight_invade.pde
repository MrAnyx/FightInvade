//plateau terminé

//modifier les caractéristique des pions dans les classes et dans le plateau

// ajouter les combats

//résoudre le probleme avec la vitesse

int xFlecheRouge = 300;
int yFlecheRouge = 75;

int xFlecheBleu = 300;
int yFlecheBleu = 725;

boolean moveDroiteRouge = false;
boolean moveGaucheRouge = false;

boolean moveDroiteBleu = false;
boolean moveGaucheBleu = false;

int manaBleu = 10;
int manaRouge = 10;

int compteur = 0;

Tank[] tabTankBleu = new Tank[5];
Fighter[] tabFighterBleu = new Fighter[5];
Ninja[] tabNinjaBleu = new Ninja[5];

Tank[] tabTankRouge = new Tank[5];
Fighter[] tabFighterRouge = new Fighter[5];
Ninja[] tabNinjaRouge = new Ninja[5];

int choixBleu = 0;
int choixRouge = 0;

int alphaTankBleu, alphaFighterBleu, alphaNinjaBleu;
int alphaTankRouge, alphaFighterRouge, alphaNinjaRouge;

int lifeBleu = 200;
int lifeRouge = 200;



void setup(){
	size(600,800);
	for(int i = 0; i<5; i++){
		tabTankBleu[i] = new Tank("blue");
		tabFighterBleu[i] = new Fighter("blue");
		tabNinjaBleu[i] = new Ninja("blue");

		///////////////////////////////////

		tabTankRouge[i] = new Tank("red");
		tabFighterRouge[i] = new Fighter("red");
		tabNinjaRouge[i] = new Ninja("red");

		////////////////////////////////

		tabTankBleu[i].x = xFlecheBleu;
		tabFighterBleu[i].x = xFlecheBleu;
		tabNinjaBleu[i].x = xFlecheBleu;

		tabTankBleu[i].y = yFlecheBleu;
		tabFighterBleu[i].y = yFlecheBleu;
		tabNinjaBleu[i].y = yFlecheBleu;

		/////////////////////////////////

		tabTankRouge[i].x = xFlecheRouge;
		tabFighterRouge[i].x = xFlecheRouge;
		tabNinjaRouge[i].x = xFlecheRouge;

		tabTankRouge[i].y = yFlecheRouge;
		tabFighterRouge[i].y = yFlecheRouge;
		tabNinjaBleu[i].y = yFlecheRouge;


	}
}


void draw(){
	affichePlateau();
	dessinerFlecheRouge();
	dessinerFlecheBleu();
	

	if(compteur%60 == 0){
		if(manaBleu<10)manaBleu++;
		if(manaRouge<10)manaRouge++;
	}

	for(int i = 0; i<5; i++){ //si un pion est mort, il repart a son emplacement initial
		if(tabTankBleu[i].isDead) {tabTankBleu[i].x = xFlecheBleu;tabTankBleu[i].y = yFlecheBleu;}
		if(tabFighterBleu[i].isDead) {tabFighterBleu[i].x = xFlecheBleu;tabFighterBleu[i].y = yFlecheBleu;}
		if(tabNinjaBleu[i].isDead) {tabNinjaBleu[i].x = xFlecheBleu;tabNinjaBleu[i].y = yFlecheBleu;}

		////////////////////////////////////////////////

		if(tabTankRouge[i].isDead) {tabTankRouge[i].x = xFlecheRouge;tabTankRouge[i].y = yFlecheRouge;}
		if(tabFighterRouge[i].isDead) {tabFighterRouge[i].x = xFlecheRouge;tabFighterRouge[i].y = yFlecheRouge;}
		if(tabNinjaRouge[i].isDead) {tabNinjaRouge[i].x = xFlecheRouge;tabNinjaRouge[i].y = yFlecheRouge;}
	}

	for(int i = 0; i<5; i++){
		if(!tabTankBleu[i].isDead){
			tabTankBleu[i].show();
			if(!tabTankBleu[i].isFighting)tabTankBleu[i].move();
		}
		
		if(!tabFighterBleu[i].isDead){
			tabFighterBleu[i].show();
			if(!tabFighterBleu[i].isFighting)tabFighterBleu[i].move();
		}
		
		if(!tabNinjaBleu[i].isDead){
			tabNinjaBleu[i].show();
			if(!tabNinjaBleu[i].isFighting)tabNinjaBleu[i].move();
		}

		///////////////////////////////////////

		if(!tabTankRouge[i].isDead){
			tabTankRouge[i].show();
			if(!tabTankRouge[i].isFighting)tabTankRouge[i].move();
		}
		
		if(!tabFighterRouge[i].isDead){
			tabFighterRouge[i].show();
			if(!tabFighterRouge[i].isFighting)tabFighterRouge[i].move();
		}
		
		if(!tabNinjaRouge[i].isDead){
			tabNinjaRouge[i].show();
			if(!tabNinjaRouge[i].isFighting)tabNinjaRouge[i].move();
		}
		
	}
	
	combat();
	dead();
	
	


	noFill(); //affichage des rectangles de selection
	strokeWeight(2);
	rect(481,405+choixBleu*95,115, 85);
	rect(5,120+choixRouge*95,115,85);

	pionsDeadHorsPlateau();

	compteur++;	
}
