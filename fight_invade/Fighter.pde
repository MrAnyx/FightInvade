class Fighter{
	int x, y, speed, hp, ad, mana;
	color couleur;
	boolean isFighting, isDead; //si le pion est lancé, la fonction show est lancé sinon elle ne se lance pas
	String team; //indique la team du pion rouge ou bleue

	Fighter(String t){
		x = 5000;
		y = 600;
		hp = 50;
		speed = 3; 
		ad = 3;
		couleur = color(45,165,75);
		isFighting = false;
		team = t;
		isDead = true;
		mana = 5;
	}

	void show(){
		fill(couleur);
		ellipse(x, y, 5*16, 5*16);
		textSize(20);
		fill(0);
		text(str(isFighting), x-5, y+7);
		showLife();
	}

	void move(){
		if(team == "blue")y-=speed;
		else y+=speed;
		
	}

	void showLife(){
		fill(255,0,0);
		noStroke();
		if(team == "red")rect(x-37,y-60,hp*1.5, 10);
		else rect(x-37,y+50,hp*1.5, 10);
		
		stroke(3);
		noFill();
		if(team == "red")rect(x-37,y-60,75, 10);
		else rect(x-37,y+50,75, 10);
		

	}

	



}