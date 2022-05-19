class CreateTadpole
{
  int tadLength; // The length of the tadpole. This is denoted by the number of segments drawn. This will range between 1 and 10.
  boolean limbs; // If the tadpole has limbs, these are drawn as lines either side of the segments.
  int eyes; // The number of eyes. These are drawn on stalks from the head as per the video. This will range between 0 and 9
  char gender;
  color tadColor; // the color of the tadpole
  String name;

  float posX = width/2;
  float posY = height/2;
  float step = 80;

  CreateTadpole(int tadLength, boolean limbs, int eyes, char gender, color tadColor, String name)
  {
    this.tadLength = tadLength;
    this.limbs = limbs;
    this.eyes = eyes;
    this.gender = gender;
    this.tadColor = tadColor;
    this.name = name;

    this.eyes = this.eyes / 2;
  }

  void DrawTadpole() // draws circles based on tadpole length, checks gender and draws additional shapes depending on the gender
  {
    fill(tadColor);
    textAlign(CENTER);
    textSize(72);
    text(name, posX, posY - step*2);

    for (int i = 0; i < tadLength; i++)
    {
      stroke(tadColor);

      if (i == 0)
      {
        fill(tadColor);
      } else
      {
        noFill();
      }

      circle(posX, posY + (i * step), step);

      if (limbs)
      {
        line(posX - step/2, posY + (i*step), posX - step*1.5, posY + (i*step));
        line(posX + step/2, posY + (i*step), posX + step*1.5, posY + (i*step));
      }

      if (i == tadLength - 1)
      {
        if (gender == 'm')
        {
          line(posX, posY + (i * step) + step/2, posX, posY + (i * step) + step);
          circle(posX, posY + (i * step) + step + 7.5, 15);
        }

        if (gender == 'f')
        {
          circle(posX, posY + (i * step), step/1.4);
        }

        if (gender == 'h')
        {
          line(posX, posY + (i * step) + step/2, posX, posY + (i * step) + step);
          circle(posX, posY + (i * step) + step + 7.5, 15);
          circle(posX, posY + (i * step), step/1.4);
        }
      }
    }

    if (eyes != 0)
    {
      for (int b = 0; b < eyes; b++)
      {
        line(posX, posY, posX - (b * 10) - 15, posY - step + (b*3));
        line(posX, posY, posX + (b * 10) + 15, posY - step + (b*3));
        
        circle(posX - (b * 10) - 15, posY - step + (b*3) - 5, 10);
        circle(posX + (b * 10) + 15, posY - step + (b*3) - 5, 10);
      }

      if (eyes % 2 != 0)
      {
        line(posX, posY, posX, posY - step);
        circle(posX, posY - step - 5, 10);
      }
    }
  }
}
