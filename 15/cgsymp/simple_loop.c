void simple_loop(double Y1[100])
{
  int i;
  for (i = 0; i < 100; i++) {
    Y1[i] = 1.0 + ((1.0 + (double)i) - 1.0);
  }
}
