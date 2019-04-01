# compiler to use
CC = c++
CFLAGS=-O3 -std=c++14 -g

LOCALPATH=/broad/IDP-Dx_work/nirmalya/local
INC = -I${LOCALPATH}/include
LIBDIR=${LOCALPATH}/lib/
#LIBS=${LIBDIR}/libhts.so  -lz -lboost_program_options -lboost_regex
LIBS=-lhts  -lz -lboost_program_options -lboost_regex


all: tools
    
tools:
	$(CC) $(CFLAGS) $(INC) sample_bam.cpp -o sample_bam  $(LIBS) 
