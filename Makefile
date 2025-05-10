# This is the default target, which will be built when 
# you invoke make
all: code

# This rule tells make how to build hello from hello.cpp
code: code.cpp
	g++ code.cpp -o code

# This rule tells make to copy hello to the binaries subdirectory,
# creating it if necessary
install:
	mkdir -p bin
	cp -p code bin

clean:
	rm -f code