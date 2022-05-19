// C21449374, Erik Watchorn

int tadLength = 1; // The length of the tadpole. This is denoted by the number of segments drawn. This will range between 1 and 10.
boolean limbs = false; // If the tadpole has limbs, these are drawn as lines either side of the segments.
int eyes = 0; // The number of eyes. These are drawn on stalks from the head as per the video. This will range between 0 and 9 
char[] genders = new char[4]; // This can be a value of m, f, h or n. 
char gender = 'n';
color tadColor = color(0, 255, 255); // the color of the tadpole
color bckColor = color(0, 255, 255); // background color based off tadColor

void setup()
{
  background(0);
  fullScreen(P3D);
  colorMode(HSB);
  
  genders[0] = 'n'; // n indicates no gender and nothing is drawn in the last segment.
  genders[1] = 'm'; // m indicates male and is drawn with a line and a circle on the last segment.
  genders[2] = 'f'; // f indicates female and is drawn with a circle in the bottom segment.
  genders[3] = 'h'; // h indicates hermaphrodite and is drawn with both male and female symbols.
}

void draw()
{
}

void RandomiseStats () // randomises the variables that determine how the tadpole looks
{
  tadLength = int(random(1, 9));
  eyes = int(random(0, 9));
  float hue = random(0, 255);
  
  int hasLimbs = int(random(0, 1));
  int newGender = int(random(0, 3));
  
  tadColor = color(hue, 255, 255);
  bckColor = color(hue, 255, 150);
  
  if (hasLimbs == 0)
  {
    limbs = false;
  } else {
    limbs = true;
  }
  
  gender = genders[newGender];
}
