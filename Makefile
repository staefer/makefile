# Makefile
# Author: Ståhle Frid
# For C++ compiling

#Program name
PROG = dt096g_labb1

# Compiler
CC = g++

# Header location
heads = header

# Flags
# -Iheader: look for headers in /header
CXXFLAGS = -g -Wall -I$(heads)

# Location for sources
header = $(wildcard header/*.h)
source = $(wildcard source/*.cpp)

# Object files
# Suffix change from .cpp to .o
obj = $(source:.cpp=.o)

# Make program
# @: target of each rule
# ^: dependencies of each rule 
dt096g_labb1: $(obj)
	$(CXX) -o $@ $^ $(CXXFLAGS)
	clear
	./$(PROG)


# Cleaning
# PHONY = creates nothing
.PHONY: clean
clean:
	rm -f $(obj) $(PROG)
