// Created by Chloe Glave (A01166947) on 1/21/2020.

#include <stdio.h>
#include <stdbool.h>
#include "justify_string.h"

#define MAX_WORD_LENGTH 20;
#define MAX_NUMBER_OF_WORDS 100;
const char SPACE_CHARACTER = ' ';

/*Takes a string and moves the pointer to the first non-blank character
* (or end of the string if there is no non-blank character).*/
char *moveToBeginningOfNextToken(char *inputString) {
    while(*inputString == SPACE_CHARACTER) { // move pointer forward as long as space is encountered
        inputString++;
    }
    printf("%c", *inputString);
    printf("\n");
}

/*given a string with no leading spaces, returns the size of the first word.
* For example, if the string is “Hello world”, it should return 5.*/
int getCurrentTokenSize(char *inputString) {
    printf("Test");
    printf("%c", *inputString);
    while(*inputString) { // continue looping while there are characters in the string
        printf("%c", *inputString);
        *inputString++;
    }
}


