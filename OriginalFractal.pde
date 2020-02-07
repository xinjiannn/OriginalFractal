public void setup() {
	size(500,500);
	background(0);

}
public void draw() {
	frameRate(1);
	background(0);
	//color c = color(0, 126+(int)(Math.random()*28), 255, 102);
	//fill(c);
	myFractal(150,150,180);
	twoFractal(250,250,180);
}

public void myFractal (int x, int y, int sizz) {
	color v = color(0, 126+(int)(Math.random()*38), 255, 102);
	if (sizz > 10){
		fill(v);
		myFractal(x+sizz/6,y+sizz/6,7*sizz/8);
		stroke(204, 102, 0);
	}
	redraw();
	fill(v);
	arc(x, y, sizz, sizz, 0, PI+QUARTER_PI, PIE);
}

public void twoFractal (int x, int y, int sizz) {
	color v = color(90, 126+(int)(Math.random()*78), 255, 102);
	if (sizz > 10){
		fill(v);
		arc(x, y, sizz/2, sizz/2, 0, PI+QUARTER_PI, PIE);
		stroke(204, 102, 0);
	}
	redraw();
	fill(v);
	//arc(x, y, sizz/2, sizz/2, 0, PI+QUARTER_PI, PIE);
	//arc(x+(sizz/2), y, sizz/2, sizz/2, 0, PI+QUARTER_PI, PIE);
	//arc(x+(sizz/2), y-(sizz/2), sizz/2, sizz/2, 0, PI+QUARTER_PI, PIE);
	twoFractal(x,y,sizz/2);
}
