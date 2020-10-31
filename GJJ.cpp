#include <bits/stdc++.h>
#ifdef WIN32
  #include <winsock2.h>
  #include <windows.h>
#endif
#include <gl/glut.h>
#include <openssl.md5.h>

#include "#.hpp"
#include "original.hpp"

#include "secbuild.cpp"

using namespace std;
using namespace gcx;
using namespace node;

int main(int argc, char *argv[])
{
  return output(compile(processinc(argc,&argv,NULL,0)));
}
 
