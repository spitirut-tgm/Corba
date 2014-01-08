CC 			= clang
CXX 		= clang++
RM 			= rm -rf
CPPFLAGS 	= -g -I/usr/include/omniORB4/ -I.
LDFLAGS 	= -g
LDLIBS 		= /usr/lib/libomni*

MKDIR		= mkdir -p
CP			= cp

all: build_cpp build_python

#_________
#\_   ___ \      __          __
#/    \  \/   __|  |___   __|  |___
#\     \____ /__    __/  /__    __/
# \______  /    |__|        |__|
#        \/
build_cpp: cpp_server cpp_client

cpp_server: echoSK.o eg3_impl.o
	$(CXX) $(LDFLAGS) -o cxxserver echoSK.o eg3_impl.o $(LDLIBS)       

cpp_client: echoSK.o eg3_clt.o
	$(CXX) $(LDFLAGS) -o cxxclient echoSK.o eg3_clt.o $(LDLIBS)

idl_cpp:
# 	generate cpp stubs from idl file
	omniidl -bcxx idl/echo.idl

echoSK.cc: idl_cpp

echo.hh: idl_cpp

echoSK.o: echoSK.cc echo.hh

eg3_impl.o: eg3_impl.cc echo.hh

eg3_clt.o: eg3_clt.cc echo.hh

clean_cpp_server:
	-$(RM) *.o
	-$(RM) echo.hh
	-$(RM) echoSK.cc
	-$(RM) cxxserver

clean_cpp_client:
	-$(RM) *.o
	-$(RM) echo.hh
	-$(RM) echoSK.cc
	-$(RM) cxxclient

#_______________ ___ ______________ ___ ________    _______
#\______   \__  |   |\__    ___/   |   \\_____  \   \      \
# |     ___//   |   |  |    | /    ~    \/   |   \  /   |   \
# |    |    \____   |  |    | \    Y    /    |    \/    |    \
# |____|    / ______|  |____|  \___|_  /\_______  /\____|__  /
#           \/                       \/         \/         \/
build_python: idl_python

idl_python:
# 	generate python stubs from idl file
	omniidl -bpython idl/echo.idl

clean_python:
	-$(RM) Example/
	-$(RM) Example__POA/
	-$(RM) echo_idl.py

clean: clean_cpp_client clean_cpp_server clean_python