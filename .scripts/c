#!/bin/sh

if [ -z "$1" ]
then
	gcc -Wall -Werror -Wextra *.c && ./a.out
else
	gcc -Wall -Werror -Wextra $@ && ./a.out
fi
