class CreateTadpole
{
  int tadLength; // The length of the tadpole. This is denoted by the number of segments drawn. This will range between 1 and 10.
  boolean limbs; // If the tadpole has limbs, these are drawn as lines either side of the segments.
  int eyes; // The number of eyes. These are drawn on stalks from the head as per the video. This will range between 0 and 9
  char gender;
  color tadColor; // the color of the tadpole
  
  CreateTadpole(int tadLength, boolean limbs, int eyes, char gender, color tadColor)
  {
    this.tadLength = tadLength;
    this.limbs = limbs;
    this. eyes = eyes;
    this.gender = gender;
    this.tadColor = tadColor;
  }

  void DrawTadpole()
  {
  }
}
