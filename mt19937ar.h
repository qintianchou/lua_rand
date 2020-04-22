/* Period parameters */  
#define N 624
#define M 397
#define MATRIX_A 0x9908b0dfUL   /* constant vector a */
#define UPPER_MASK 0x80000000UL /* most significant w-r bits */
#define LOWER_MASK 0x7fffffffUL /* least significant r bits */

typedef struct 
{
    unsigned long v[N]; /* the array for the state vector  */
    int i; /* mti==N+1 means mt[N] is not initialized */
} MT;

#define mt (o->v)
#define mti (o->i)

void init_genrand(MT *o, unsigned long s);
unsigned long genrand_int32(MT *o);
