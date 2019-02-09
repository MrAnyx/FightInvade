class Ninja{
	int x, y, speed, hp, ad, mana;
	color couleur;
	boolean isFighting, isDead; //si le pion est lancé, la fonction show est lancé sinon elle ne se lance pas
	String team; //indique la team du pion rouge ou bleue

	Ninja(String t){
		x = 5000;
		y = 600;
		hp = 30;
		speed = 4; 
		ad = 5;
		couleur = color(239,230,61);
		isFighting = false;
		team = t;
		isDead = true;
		mana = 3;
	}

	void show(){
		fill(couleur);
		ellipse(x, y, 3*16, 3*16);
		textSize(20);
		fill(0);
		text(str(isFighting), x-7, y+8);
		showLife();
	}

	void move(){
		if(team == "blue")y-=speed;
		else y+=speed;
		
	}

	void showLife(){
		fill(255,0,0);
		noStroke();
		if(team == "red")rect(x-37,y-42,hp*2.5, 10);
		else rect(x-37,y+32,hp*2.5, 10);
		
		stroke(3);
		noFill();
		if(team == "red")rect(x-37,y-42,75, 10);
		else rect(x-37,y+32,75, 10);
		

	}

	



}