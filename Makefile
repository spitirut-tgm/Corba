# compiler  #
CXX 		= clang++

# includes 	#
INCLUDE		= /usr/include/omniORB4/

# libraries	#
#LIBRARY		= $(ORBACUS)/lib

# flags		#
CFLAGS
CPPFLAGS

# programs 	#
RM			= rm -f
MKDIR		= mkdir -p
CP			= cp

# code 		#
CPP_HEADERS =
CPP_SOURCES =

all: build_cpp build_python

echo.hh:
	$(MKDIR) $(CPP_PATH)
	# generate cpp stubs from idl file
	omniidl -bcxx idl/echo.idl

%.o: %.hh %.cc 
    $(CC) $(CFLAGS) $(CPPFLAGS) -c $<

clean_cpp:
	rm *.o
	rm echo.hh

build_cpp: %.o
	# copy cpp sources to build directory
	$(CP) cpp/* $(CPP_PATH)

	# compile stuff


build_python:
	#_______________ ___ ______________ ___ ________    _______
	#\______   \__  |   |\__    ___/   |   \\_____  \   \      \
	# |     ___//   |   |  |    | /    ~    \/   |   \  /   |   \
	# |    |    \____   |  |    | \    Y    /    |    \/    |    \
	# |____|    / ______|  |____|  \___|_  /\_______  /\____|__  /
	#           \/                       \/         \/         \/

	# generate python stubs from idl file
	$(MKDIR) $(PYTHON_PATH)
	omniidl -C$(PYTHON_PATH) -bpython idl/echo.idl

	# copy python sources to build directory
	$(CP) python/* $(PYTHON_PATH)

clean: 