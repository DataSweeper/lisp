#include <stdlib.h>
#include "mpc.h"
#include "lispy.h"

lval* builtin_fappend (lenv* a, lval* c) {
  FILE* fp;
  //lval* c = lval_take(b, 0);
  fp = fopen(c->cell[0]->str, "a+");
  fprintf(fp, "%s", c->cell[1]->str);
  fclose(fp);
  return lval_sexpr();
}

