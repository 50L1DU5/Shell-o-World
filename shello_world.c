/*
 * Author: Ian S. Cohee
 * Date: 10/24/2014
 *
 * This Program will scream, and die.
 *
 * It must be compiled for 32-bit
 * machines. So you need the 32-bit libs
 * for gcc if you are on a 64-bit machine
 *
 * Compile: gcc -m32 -o goodbytes goodbytes.c
 * */

#include <stdio.h>
#define BYTE unsigned char

const BYTE _eggs[] = "\x31\xc0\x50\x68\x6c\x64\x21\x0a"\
                     "\x68\x20\x77\x6f\x72\x68\x6c\x2d"\
                     "\x6f\x2c\x68\x53\x68\x65\x6c\x68"\
                     "\x5b\x2a\x5d\x20\x83\xc0\x04\x31"\
                     "\xdb\x83\xc3\x01\x89\xe1\x31\xd2"\
                     "\x83\xc2\x18\xcd\x80\x31\xc0\x83"\
                     "\xc0\x01\x31\xdb\x83\xc3\x01\xcd"\
                     "\x80";

void main(void) {
    void (*_spam) ();
    _spam = (void(*)())&_eggs;
    (void)(*_spam)();
}
