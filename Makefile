# includes 	#
INCLUDE		= /usr/include/omniORB4/ .

# libraries	#
LIBRARY		= $(ORBACUS)/lib

CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=-g $(shell root-config --cflags) -I INCLUDE
LDFLAGS=-g $(shell root-config --ldflags)
#LDLIBS=$(shell root-config --libs)
LDLIBS 		= /usr/lib/libomni*

# programs 	#
RM			= rm -rf
MKDIR		= mkdir -p
CP			= cp

OBJS		= echoSK.o eg3_impl.o

all: build_cpp build_python

clean_cpp:
	-$(RM) *.o
	-$(RM) echo.hh
	-$(RM) echoSK.cc

idl_cpp:
	# generate cpp stubs from idl file
	omniidl -bcxx idl/echo.idl

echoSK.cc: idl_cpp

echo.hh: idl_cpp

echoSK.o: echoSK.cc echo.hh

eg3_impl.o: eg3_impl.cc echo.hh

build_cpp: $(OBJS)
	$(CXX) $(LDFLAGS) -o server $(OBJS) $(LDLIBS) 

idl_python:
	# generate python stubs from idl file
	omniidl -bpython idl/echo.idl

build_python: idl_python

clean_python:
	-$(RM) _GlobalIDL
	-$(RM) _GlobalIDL__POA
	-$(RM) echo_idl.py

clean: clean_cpp clean_python