class Tank{
	int x, y, speed, hp, ad, mana;
	color couleur;
	boolean isFighting, isDead; //si le pion est lancé, la fonction show est lancé sinon elle ne se lance pas
	String team; //indique la team du pion rouge ou bleue

	Tank(String t){
		x = 5000;
		y = 600;
		hp = 100;
		speed = 1; 
		ad = 1;
		mana = 10;
		couleur = color(165, 72, 35);
		isFighting = false;
		team = t;
		isDead = true;

	}

	void show(){
		fill(couleur);
		ellipse(x, y, 10*16, 10*16);
		textSize(20);
		fill(255);
		text(str(isFighting), x-6, y+6);
		showLife();
	}

	void move(){
		if(team == "blue")y-=speed;
		else y+=speed;
		
	}

	void showLife(){
		fill(255,0,0);
		noStroke();
		if(team == "red")rect(x-37,y-100,hp*0.75, 10);
		else rect(x-37,y+90,hp*0.75, 10);
		stroke(3);
		noFill();
		if(team == "red")rect(x-37,y-100,75, 10);
		else rect(x-37,y+90,75, 10);



	}

	


}