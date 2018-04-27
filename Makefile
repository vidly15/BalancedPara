# There are two targets: balanced.o and test
CXXFLAGS=-stdc++11 -fprofile-arcs -ftest-coverage -g
# TODO: create the target for balanced.o, using
# the following command to create the object file:
balanced.0:
	g++ $(CXXFLAGS) -c balanced.cpp -o balanced.o


# The "balanced.o" after the "test:" is a dependency:
# make will run the balanced.o target (if out of date)
# before running the commands for test
test: balanced.o
	g++ $(CXXFLAGS) *.o balancedTest.cpp -o balancedTest
	./balancedTest
