#!/bin/bash

DEFS="-D_POSIX_C_SOURCE=200809L"
OPTS="-std=c89 -Wall -Wextra -pedantic -O3 -flto -ffast-math -I/usr/local/include -L/usr/local/lib"
SRCS="main.c platforms/freebsd.c core/*.c scenes/*.c shaders/*.c tests/*.c"
LIBS="-lm -lX11"

cd renderer && cc -o ../Viewer $DEFS $OPTS $SRCS $LIBS && cd ..
