#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define UNLIMIT
#define MAXARRAY 60000 /* this number, if too large, will cause a seg. fault!! */

extern char input_small[];
extern unsigned input_small_size;

struct myStringStruct {
    char qstring[128];
};

int compare(const void *elem1, const void *elem2)
{
    int result;

    result = strcmp((*((struct myStringStruct *)elem1)).qstring, (*((struct myStringStruct *)elem2)).qstring);

    return (result < 0) ? 1 : ((result == 0) ? 0 : -1);
}


int main(int argc, char *argv[]) {
    struct myStringStruct array[MAXARRAY];
    int i,count=0;

    FILE* fp = fmemopen(input_small, input_small_size, "r");

    while((fscanf(fp, "%s", &array[count].qstring) == 1) && (count < MAXARRAY)) {
        count++;
    }

    printf("\nSorting %d elements.\n\n",count);
    qsort(array,count,sizeof(struct myStringStruct),compare);

    for(i=0;i<count;i++)
        printf("%s\n", array[i].qstring);
    return 0;
}
