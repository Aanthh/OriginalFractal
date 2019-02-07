public void setup()
{
	size(900, 900);
}
public void draw()
{
	background(0);
	fill(127, 0, 127);
	myFractal(450, 450, 400);
}
public void myFractal(int x, int y, int siz)
{
	ellipse(x, y, siz, siz);
	if(siz > 10)
	{
		myFractal(x+siz/2, y+siz/2, siz/2);
		myFractal(x-siz/2, y-siz/2, siz/2);
		myFractal(x-siz/2, y+siz/2, siz/2);
		myFractal(x+siz/2, y-siz/2, siz/2);
	}
}