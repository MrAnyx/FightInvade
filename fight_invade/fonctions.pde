void affichePlateau(){
	fill(220,90,90); 
	rect(0,0,600,400);//rectangle rouge symbolisant la partie rouge

	fill(72,130,190);
	rect(0,400, 600,400); // rectangle bleu symbolisant la partie bleu

	fill(240,185,140); 
	rect(124,0,352,800);//plateau du milieu

	if(moveGaucheRouge)fill(247, 172, 172);
	else fill(200,200,200);
	rect(10,10,105, 105);//bouton gauche du haut

	if(moveDroiteRouge)fill(247, 172, 172);
	else fill(200,200,200);
	rect(485,10,105, 105);//bouton droite du haut

	if(moveGaucheBleu)fill(185, 218, 242); 
	else fill(200,200,200);
	rect(10,685,105, 105);// bouton gauche du bas

	if(moveDroiteBleu)fill(185, 218, 242); 
	else fill(200,200,200);
	rect(485,685,105, 105);//bouton droite du bas
	
	for(int i = 124+88; i<=124+3*88; i+=88){
		strokeWeight(1);
		fill(0);
		line(i, 0,i, 800);
	}

	textSize(60);
	fill(220,90,90); //rouge
	text("<", 35,20,200,200);
	text(">", 516,20,200,200);

	fill(72,130,190); //bleu
	text("<", 35,700,200,200);
	text(">", 516,700,200,200);

	
	
	fill(0);
	textSize(25);
	text("Mana : ", 23,500,200,200); //bleu
	text("Mana : ", 500,220,200,200); //rouge

	text(str(manaBleu) + "/10", 23,545,200,200); //bleu
	text(str(manaRouge) + "/10", 500,265,200,200); //rouge

	
	if(manaBleu >= tabTankBleu[0].mana)alphaTankBleu = 255;
	else alphaTankBleu = 50;
	if(manaBleu >= tabFighterBleu[0].mana)alphaFighterBleu = 255;
	else alphaFighterBleu = 50;
	if(manaBleu >= tabNinjaBleu[0].mana)alphaNinjaBleu = 255;
	else alphaNinjaBleu = 50;

	if(manaRouge >= tabTankRouge[0].mana)alphaTankRouge = 255;
	else alphaTankRouge = 50;
	if(manaRouge >= tabFighterRouge[0].mana)alphaFighterRouge = 255;
	else alphaFighterRouge = 50;
	if(manaRouge >= tabNinjaRouge[0].mana)alphaNinjaRouge = 255;
	else alphaNinjaRouge = 50;
	

	//gauche
	fill(165, 72, 35, alphaTankRouge);//tank
	ellipse(59, 152, 50, 50);
	fill(45,165,75, alphaFighterRouge);//fighter
	ellipse(59, 152+45+50, 50, 50);
	fill(239,230,61, alphaNinjaRouge);//ninja
	ellipse(59, 152+90+100, 50, 50);

	textSize(20);
	fill(255, alphaTankRouge);
	text("T", 53, 159);
	fill(0, alphaFighterRouge);
	text("F", 53, 159+45+50);
	fill(0, alphaNinjaRouge);
	text("N", 53, 159+90+100);

	textSize(9);
	fill(0);
	text("AD:10 HP:100 MANA:10", 10,190);//tank
	text("SPEED:2", 45,200);

	text("AD:50 HP:50 MANA:5", 12,190+45+50);//fighter
	text("SPEED:3", 45,200+45+50);

	text("AD:50 HP:30 MANA:7", 12,190+90+100);//ninja
	text("SPEED:4", 45,200+90+100);

	//droite
	fill(165, 72, 35, alphaTankBleu);//tank
	ellipse(536, 435, 50, 50);
	fill(45,165,75, alphaFighterBleu);//fighter
	ellipse(536, 435+45+50, 50, 50);
	fill(239,230,61, alphaNinjaBleu);//ninja
	ellipse(536, 435+90+100, 50, 50);

	textSize(20);
	fill(255, alphaTankBleu);
	text("T", 530, 442);
	fill(0, alphaFighterBleu);
	text("F", 530, 442+45+50);
	fill(0, alphaNinjaBleu);
	text("N", 530, 442+90+100);

	textSize(9);
	fill(0);
	text("AD:10 HP:100 MANA:10", 485, 473);//tank
	text("SPEED:2", 522,483);

	text("AD:50 HP:50 MANA:5", 488,473+45+50);//fighter
	text("SPEED:3", 522,483+45+50);

	text("AD:50 HP:30 MANA:7", 488,473+90+100);//ninja
	text("SPEED:4", 522,483+90+100);

	displayLifeRouge();
	displayLifeBleu();
}

// void resetSpeed(){
// 	for(int i = 0; i<5; i++){
	
// 		if(tabTankBleu[i].isFighting)tabTankBleu[i].speed = 0;
// 		if(tabFighterBleu[i].isFighting)tabFighterBleu[i].speed = 0;
// 		if(tabNinjaBleu[i].isFighting)tabNinjaBleu[i].speed = 0;

// 		if(tabTankRouge[i].isFighting)tabTankRouge[i].speed = 0;
// 		if(tabFighterRouge[i].isFighting)tabFighterRouge[i].speed = 0;
// 		if(tabNinjaRouge[i].isFighting)tabNinjaRouge[i].speed = 0;
		
// 	}
// }


void dead(){
	for (int i = 0; i < 5; i++) {
		if(tabTankBleu[i].hp<=0){tabTankBleu[i].isDead = true;tabTankBleu[i].isFighting = false;}
		if(tabFighterBleu[i].hp<=0){tabFighterBleu[i].isDead = true;tabFighterBleu[i].isFighting = false;}
		if(tabNinjaBleu[i].hp<=0){tabNinjaBleu[i].isDead = true;tabNinjaBleu[i].isFighting = false;}

		if(tabTankRouge[i].hp<=0){tabTankRouge[i].isDead = true;tabTankRouge[i].isFighting = false;}
		if(tabFighterRouge[i].hp<=0){tabFighterRouge[i].isDead = true;tabFighterRouge[i].isFighting = false;}
		if(tabNinjaRouge[i].hp<=0){tabNinjaRouge[i].isDead = true;tabNinjaRouge[i].isFighting = false;}
	}
}

void dessinerFlecheBleu(){ //x et y correspondent au coordonnées de la pointe de l flèche
	noStroke();
	fill(72,130,190);
	triangle(xFlecheBleu, yFlecheBleu, xFlecheBleu-20, yFlecheBleu+30,xFlecheBleu+20, yFlecheBleu+30);
	rect(xFlecheBleu-8, yFlecheBleu+30, 16, 30);
	stroke(0);
}

void dessinerFlecheRouge(){ //x et y correspondent au coordonnées de la pointe de l flèche
	noStroke();
	fill(220,90,90);
	triangle(xFlecheRouge, yFlecheRouge, xFlecheRouge-20, yFlecheRouge-30,xFlecheRouge+20, yFlecheRouge-30);
	rect(xFlecheRouge-8, yFlecheRouge-60, 16, 30);
	stroke(0);
}

 
void displayLifeRouge(){
	fill(240,185,140); 
	rect(124,0,352,10);//vie de la partie rouge
	fill(226, 50, 36);
	int tailleLifeRouge = floor(map(lifeRouge, 200,0,352,0));
	rect(124,0,tailleLifeRouge,10);
	
}

void displayLifeBleu(){
	fill(240,185,140); 
	rect(124,790,352,10);//vie de la partie bleue
	fill(21, 111, 230);
	int tailleLifeBleu = floor(map(lifeBleu, 200,0,352,0));
	rect(124,790,tailleLifeBleu,10);
}

void pionsDeadHorsPlateau(){
	for(int i = 0; i<5; i++){
		if(tabTankBleu[i].y<-10*16/2){tabTankBleu[i].isDead = true;lifeRouge-=tabTankBleu[i].ad;}
		if(tabFighterBleu[i].y<-5*16/2){tabFighterBleu[i].isDead = true;lifeRouge-=tabFighterBleu[i].ad;}
		if(tabNinjaBleu[i].y<-3*16/2){tabNinjaBleu[i].isDead = true;lifeRouge-=tabNinjaBleu[i].ad;}

		if(tabTankRouge[i].y>800+10*16/2){tabTankRouge[i].isDead = true;lifeBleu-=tabTankRouge[i].ad;}
		if(tabFighterRouge[i].y>800+5*16/2){tabFighterRouge[i].isDead = true;lifeBleu-=tabFighterRouge[i].ad;}
		if(tabNinjaRouge[i].y>800+3*16/2){tabNinjaRouge[i].isDead = true;lifeBleu-=tabNinjaRouge[i].ad;}
	}

}



void combat(){
	
	for (int i = 0; i < 5; i++){
		for (int j = 0; j < 5; j++){
			if(dist(tabTankBleu[i].x, tabTankBleu[i].y, tabTankRouge[j].x, tabTankRouge[j].y) <= 160 && !tabTankBleu[i].isDead && !tabTankRouge[j].isDead){
				tabTankBleu[i].isFighting = true;
				tabTankRouge[j].isFighting = true;
				tabTankBleu[i].hp-=tabTankRouge[j].ad;
				tabTankRouge[j].hp-=tabTankBleu[i].ad;
			}
			if(dist(tabTankBleu[i].x, tabTankBleu[i].y, tabFighterRouge[j].x, tabFighterRouge[j].y) <= 120 && !tabTankBleu[i].isDead && !tabFighterRouge[j].isDead){
				tabTankBleu[i].isFighting = true;
				tabFighterRouge[j].isFighting = true;
				tabTankBleu[i].hp-=tabFighterRouge[j].ad;
				tabFighterRouge[j].hp-=tabTankBleu[i].ad;
			}
			if(dist(tabTankBleu[i].x, tabTankBleu[i].y, tabNinjaRouge[j].x, tabNinjaRouge[j].y) <= 104 && !tabTankBleu[i].isDead && !tabNinjaRouge[j].isDead){
				tabTankBleu[i].isFighting = true;
				tabNinjaRouge[j].isFighting = true;
				tabTankBleu[i].hp-=tabNinjaRouge[j].ad;
				tabNinjaRouge[j].hp-=tabTankBleu[i].ad;
			}



			if(dist(tabFighterBleu[i].x, tabFighterBleu[i].y, tabTankRouge[j].x, tabTankRouge[j].y) <= 120 && !tabFighterBleu[i].isDead && !tabTankRouge[j].isDead){
				tabFighterBleu[i].isFighting = true;
				tabTankRouge[j].isFighting = true;
				tabFighterBleu[i].hp-=tabTankRouge[j].ad;
				tabTankRouge[j].hp-=tabFighterBleu[i].ad;
			}
			if(dist(tabFighterBleu[i].x, tabFighterBleu[i].y, tabFighterRouge[j].x, tabFighterRouge[j].y) <= 5*16 && !tabFighterBleu[i].isDead && !tabFighterRouge[j].isDead){
				tabFighterBleu[i].isFighting = true;
				tabFighterRouge[j].isFighting = true;
				tabFighterBleu[i].hp-=tabFighterRouge[j].ad;
				tabFighterRouge[j].hp-=tabFighterBleu[i].ad;
			}	
			if(dist(tabFighterBleu[i].x, tabFighterBleu[i].y, tabNinjaRouge[j].x, tabNinjaRouge[j].y) <= 64 && !tabFighterBleu[i].isDead && !tabNinjaRouge[j].isDead){
				tabFighterBleu[i].isFighting = true;
				tabNinjaRouge[j].isFighting = true;
				tabFighterBleu[i].hp-=tabNinjaRouge[j].ad;
				tabNinjaRouge[j].hp-=tabFighterBleu[i].ad;
			}
			

			if(dist(tabNinjaBleu[i].x, tabNinjaBleu[i].y, tabTankRouge[j].x, tabTankRouge[j].y) <= 104 && !tabNinjaBleu[i].isDead && !tabTankRouge[j].isDead){
				tabNinjaBleu[i].isFighting = true;
				tabTankRouge[j].isFighting = true;
				tabNinjaBleu[i].hp-=tabTankRouge[j].ad;
				tabTankRouge[j].hp-=tabNinjaBleu[i].ad;
			}	
			if(dist(tabNinjaBleu[i].x, tabNinjaBleu[i].y, tabFighterRouge[j].x, tabFighterRouge[j].y) <= 64 && !tabNinjaBleu[i].isDead && !tabFighterRouge[j].isDead){
				tabNinjaBleu[i].isFighting = true;
				tabFighterRouge[j].isFighting = true;
				tabNinjaBleu[i].hp-=tabFighterRouge[j].ad;
				tabFighterRouge[j].hp-=tabNinjaBleu[i].ad;
			}	
			if(dist(tabNinjaBleu[i].x, tabNinjaBleu[i].y, tabNinjaRouge[j].x, tabNinjaRouge[j].y) <= 3*16 && !tabNinjaBleu[i].isDead && !tabNinjaRouge[j].isDead){
				tabNinjaBleu[i].isFighting = true;
				tabNinjaRouge[j].isFighting = true;
				tabNinjaBleu[i].hp-=tabNinjaRouge[j].ad;
				tabNinjaRouge[j].hp-=tabNinjaBleu[i].ad;
			}
		}		
	}
}


void keyPressed(){
	if(keyCode == LEFT){
		if(xFlecheBleu == 124+1*88)xFlecheBleu+=0;
		else xFlecheBleu-=88;
		moveGaucheBleu = true;
	}
	if(keyCode == RIGHT){
		if(xFlecheBleu == 124+3*88)xFlecheBleu+=0;
		else xFlecheBleu+=88;
		moveDroiteBleu = true;
	}
	if(key == 'q' || key == 'Q'){
		if(xFlecheRouge == 124+1*88)xFlecheRouge+=0;
		else xFlecheRouge-=88;
		moveGaucheRouge = true;
	}
	if(key == 'd' || key == 'D'){
		if(xFlecheRouge == 124+3*88)xFlecheRouge+=0;
		else xFlecheRouge+=88;
		moveDroiteRouge = true;
	}

	if(keyCode == ENTER){
		switch (choixBleu) {
			case 0:
				if(manaBleu>=tabTankBleu[0].mana){
					int i = 0;
					while(tabTankBleu[i].isDead == false){
						i++;
					}
					manaBleu-=tabTankBleu[i].mana;
					tabTankBleu[i].isDead = false;
					tabTankBleu[i].hp = 100;
					tabTankBleu[i].speed = 1;
					tabTankBleu[i].isFighting = false;
				}
				break;
			case 1:
				if(manaBleu>=tabFighterBleu[0].mana){
					int i = 0;
					while(tabFighterBleu[i].isDead == false){
						i++;
					}
					manaBleu-=tabFighterBleu[i].mana;
					tabFighterBleu[i].isDead = false;
					tabFighterBleu[i].hp = 50;
					tabFighterBleu[i].speed = 3;
					tabFighterBleu[i].isFighting = false;
				}
				break;
			case 2:
				if(manaBleu>=tabNinjaBleu[0].mana){
					int i = 0;
					while(tabNinjaBleu[i].isDead == false){
						i++;
					}
					manaBleu-=tabNinjaBleu[i].mana;
					tabNinjaBleu[i].isDead = false;
					tabNinjaBleu[i].hp = 30;
					tabNinjaBleu[i].speed = 5;
					tabNinjaBleu[i].isFighting = false;
				}
				break;


		}
		
	}

	if(key == ' '){
		switch (choixRouge) {
			case 0:
				if(manaRouge>=tabTankRouge[0].mana){
					int i = 0;
					while(tabTankRouge[i].isDead == false){
						i++;
					}
					manaRouge-=tabTankRouge[i].mana;
					tabTankRouge[i].isDead = false;
					tabTankRouge[i].hp = 100;
					tabTankRouge[i].speed = 1;
					tabTankRouge[i].isFighting = false;
				}
				break;
			case 1:
				if(manaRouge>=tabFighterRouge[0].mana){
					int i = 0;
					while(tabFighterRouge[i].isDead == false){
						i++;
					}
					manaRouge-=tabFighterRouge[i].mana;
					tabFighterRouge[i].isDead = false;
					tabFighterRouge[i].hp = 50;
					tabFighterRouge[i].speed = 3;
					tabFighterRouge[i].isFighting = false;
				}
				break;
			case 2:
				if(manaRouge>=tabNinjaRouge[0].mana){
					int i = 0;
					while(tabNinjaRouge[i].isDead == false){
						i++;
					}
					manaRouge-=tabNinjaRouge[i].mana;
					tabNinjaRouge[i].isDead = false;
					tabNinjaRouge[i].hp = 30;
					tabNinjaRouge[i].speed = 5;
					tabNinjaRouge[i].isFighting = false;
				}
				break;


		}
	}

	if(keyCode == UP){
		if(choixBleu == 0)choixBleu = choixBleu - 0;
		else choixBleu--;
	}

	if(keyCode == DOWN){
		if(choixBleu == 2)choixBleu = choixBleu + 0;
		else choixBleu++;
	}

	if(key == 'z' || key == 'Z'){
		if(choixRouge == 0)choixRouge = choixRouge - 0;
		else choixRouge--;
	}

	if(key == 's' || key == 'S'){
		if(choixRouge == 2)choixRouge = choixRouge + 0;
		else choixRouge++;
	}



}
void keyReleased(){
	if(keyCode == LEFT)moveGaucheBleu = false;
	if(keyCode == RIGHT)moveDroiteBleu = false;
	if(key == 'q' || key == 'Q')moveGaucheRouge = false;
	if(key == 'd' || key == 'D')moveDroiteRouge = false;
}