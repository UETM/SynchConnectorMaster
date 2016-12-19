#include <string.h>
#include <ctype.h>

int strcasecmp(const char *s1, const char *s2)
{
   char c1;
   char c2;

   while(1)
   {
      c1 = tolower((unsigned char) *s1++);
      c2 = tolower((unsigned char) *s2++);

      if (c1 < c2)
         return -1;
      if (c1 > c2)
         return 1;
      if (c1 == '\0')
         return 0;
   }

   return 1;
}

int strncasecmp(const char *s1, const char *s2, int n)
{
   int i;
   char c1;
   char c2;

   for(i = 0; i < n; i++)
   {
      c1 = tolower((unsigned char) *s1++);
      c2 = tolower((unsigned char) *s2++);

      if(c1 < c2)
         return -1;
      if (c1 > c2)
         return 1; 
      if (c1 == '\0')
         return 0; 
   }

   return 0;
}
