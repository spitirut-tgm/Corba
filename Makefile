# includes #
INCLUDE	= /usr/include/omniORB4/

# programs #
RM		= rm -f
MKDIR	= mkdir -p
CP		= cp

all: build_cpp build_python

build_cpp:
	#_________                          
	#\_   ___ \      __          __     
	#/    \  \/   __|  |___   __|  |___ 
	#\     \____ /__    __/  /__    __/ 
	# \______  /    |__|        |__|    
	#        \/                      

	# generate cpp stubs from idl file
	$(MKDIR) build/cpp
	omniidl -Cbuild/cpp -bcxx idl/echo.idl

	# copy cpp sources to build directory
	$(CP) cpp/* build/cpp/

build_python:
	#_______________ ___ ______________ ___ ________    _______   
	#\______   \__  |   |\__    ___/   |   \\_____  \   \      \  
	# |     ___//   |   |  |    | /    ~    \/   |   \  /   |   \ 
	# |    |    \____   |  |    | \    Y    /    |    \/    |    \
	# |____|    / ______|  |____|  \___|_  /\_______  /\____|__  /
	#           \/                       \/         \/         \/ 

	# generate python stubs from idl file
	$(MKDIR) build/python
	omniidl -Cbuild/python -bpython idl/echo.idl

	# copy python sources to build directory
	$(CP) python/* build/python/

clean: 
	-$(RM) -r build