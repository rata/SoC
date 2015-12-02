unsigned char rgb_to_bw(
      unsigned char red,
      unsigned char green,
      unsigned char blue
      )
{
return (red + green + blue) / 3;
}
