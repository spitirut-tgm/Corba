CC 			= clang
CXX 		= clang++
RM 			= rm -rf
CPPFLAGS 	= -g -I/usr/include/omniORB4/ -I.
LDFLAGS 	= -g
LDLIBS 		= /usr/lib/libomni*

MKDIR		= mkdir -p
CP			= cp

OBJS		= echoSK.o eg2_impl.o

all: cpp_client build_python

idl_cpp:
	# generate cpp stubs from idl file
	omniidl -bcxx idl/echo.idl

echoSK.cc: idl_cpp

echo.hh: idl_cpp

echoSK.o: echoSK.cc echo.hh

eg2_impl.o: eg2_impl.cc echo.hh

cpp_client: $(OBJS)
	$(CXX) $(LDFLAGS) -o server $(OBJS) $(LDLIBS) 

clean_cpp_client:
	-$(RM) *.o
	-$(RM) echo.hh
	-$(RM) echoSK.cc

idl_python:
	# generate python stubs from idl file
	omniidl -bpython idl/echo.idl

build_python: idl_python

clean_python:
	-$(RM) _GlobalIDL
	-$(RM) _GlobalIDL__POA
	-$(RM) echo_idl.py

clean: clean_cpp_client clean_python