// C21449374, Erik Watchorn

int tadLength = 1; // The length of the tadpole. This is denoted by the number of segments drawn. This will range between 1 and 10.
boolean limbs = false; // If the tadpole has limbs, these are drawn as lines either side of the segments.
int eyes = 0; // The number of eyes. These are drawn on stalks from the head as per the video. This will range between 0 and 9
char[] genders = new char[4]; // This can be a value of m, f, h or n.
char gender = 'n';
color tadColor = color(0, 255, 255); // the color of the tadpole
color bckColor = color(0, 200, 50); // background color based off tadColor
String name = "";

String[] names1 = {"Gold", "Robo", "Strong", "Loud", "Pint", "Crazy", "Tad", "Emperor"};
String[] names2 = {"Julia", "John", "Mason", "Suzie", "Jerry", "Robin"};
String[] names3 = {"Ice", "Greene", "Yellowe", "Bread", "Frog"};
String[] names4 = {"Berry", "Potato", "Sauce", "Salad", "Mud"};
String[] names5 = {"Slate", "Emerald", "Bronze", "Diamond", "Silver"};

CreateTadpole createTadpole;

void setup()
{
  RandomiseStats();
  background(bckColor);
  fullScreen(P3D);
  colorMode(HSB);
  noFill();
  strokeWeight(2);

  genders[0] = 'n'; // n indicates no gender and nothing is drawn in the last segment.
  genders[1] = 'm'; // m indicates male and is drawn with a line and a circle on the last segment.
  genders[2] = 'f'; // f indicates female and is drawn with a circle in the bottom segment.
  genders[3] = 'h'; // h indicates hermaphrodite and is drawn with both male and female symbols.

  createTadpole = new CreateTadpole(tadLength, limbs, eyes, gender, tadColor, name);
  println(tadLength, limbs, eyes, gender, tadColor, name);
}

void draw()
{
  createTadpole.DrawTadpole();
}

void RandomiseStats () // randomises the variables that determines how the tadpole looks
{
  tadLength = int(random(1, 9));
  eyes = int(random(0, 9));
  float hue = random(0, 255);
  name = "";

  int hasLimbs = int(random(0, 1));
  int newGender = int(random(0, 4));
  int nameLength = int(random(1, 5));

  tadColor = color(hue, 255, 255);
  bckColor = color(hue, 200, 50);

  if (hasLimbs == 0)
  {
    limbs = false;
  } else {
    limbs = true;
  }

  gender = genders[newGender];

  // adds random names from each array to string name
  int arrayNum1 = int(random(0, names1.length));
  int arrayNum2 = int(random(0, names2.length));
  int arrayNum3 = int(random(0, names3.length));

  name = names1[arrayNum1] + " " + names2[arrayNum2] + " " + names3[arrayNum3];
  
  if (nameLength > 3)
  {
    int arrayNum4 = int(random(0, names4.length));
    name += " " + names4[arrayNum4];
  }
  
  if (nameLength > 4)
  {
    int arrayNum5 = int(random(0, names5.length));
    name += " " + names5[arrayNum5];
  }
}

void keyPressed() // if space is pressed the stats are randomised
{
  if (key == ' ')
  {
    RandomiseStats();
    background(bckColor);
    createTadpole = new CreateTadpole(tadLength, limbs, eyes, gender, tadColor, name);
    println(tadLength, limbs, eyes, gender, tadColor, name);
  }
}
