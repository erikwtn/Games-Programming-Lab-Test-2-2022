// C21449374, Erik Watchorn

int length = 1; // The length of the tadpole. This is denoted by the number of segments drawn. This will range between 1 and 10.
int limbs = 0; // If the tadpole has limbs, these are drawn as lines either side of the segments.
int eyes = 0; // The number of eyes. These are drawn on stalks from the head as per the video. This will range between 0 and 9 
char[] gender = new char[3]; // This can be a value of m, f, h or n. 
color tadColor = color(0, 0, 0); // the color of the tadpole
color bckColor = color(0, 0, 0);

void setup()
{
  gender[0] = 'n'; // n indicates no gender and nothing is drawn in the last segment.
  gender[1] = 'm'; // m indicates male and is drawn with a line and a circle on the last segment.
  gender[2] = 'f'; // f indicates female and is drawn with a circle in the bottom segment.
  gender[3] = 'h'; // h indicates hermaphrodite and is drawn with both male and female symbols.
}

void draw()
{
  
}

void RandomiseStats () // randomises the variables that determine how the tadpole looks
{
  
}
