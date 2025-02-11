sources = $(wildcard *.cc)
objects = $(addsuffix .o, $(basename $(sources)))
flags = -g -W -Wall -std=c++14 -DDEBUG=1 -DTEST=1
target = cipher 


$(target) : $(objects)
	g++ -o $(target) $(objects) 

%.o : %.cc
	g++ -c $(flags) $< -o $@
clean :
	rm $(target) $(objects)
