//Extended Euclid
//Algorithm McAndrew, pp 30-31.

#include <iostream>
#include <stdlib.h>
using namespace std;

 
void extEuc(int, int,int&,int&);

int main(int argc, char* argv[])
{
 int m = atoi(argv[1]);
 int n = atoi(argv[2]);
 int s = 0;
 int t = 0;

 extEuc(m,n,s,t);

 cout <<  "s = " << s << endl; 
 cout <<  "t = " << t << endl; 

 return 0;
}

void extEuc(int m, int n, int& s, int& t)
{
 int rm1 = m;
 int um1 = 1;
 int vm1 = 0;

 int r0 = n;
 int u0 = 0;
 int v0 = 1;
 int qc, rc, uc, vc; 

 while (1)
 {
  qc = int(rm1/r0);
  rc = rm1 - r0*qc; 
  uc = um1 - u0*qc;
  vc = vm1 -v0*qc;
  if (rc == 0)
   break;
  rm1 = r0;
  r0 = rc;
  um1 = u0;
  u0 = uc;
  vm1 = v0;
  v0 = vc;
 }
 s = u0;
 t = v0; 
}
