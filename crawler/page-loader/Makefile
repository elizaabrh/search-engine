# mer tsragri ashxatelu hamar mez petq a file named 'test'
all: test

# test file y sarqelu hamar mez petq en 'test.o' + 'lib.o' filery
# lib.o um linelu en PageLoader + LoadResult gradarannery
test: test.o PageLoader.o LoadResult.o parser.o
	g++ test.o PageLoader.o LoadResult.o parser.o -lcurl -lcurlpp -lgumbo -o test

# test.o i hamar mez petq a 'test.cpp' n
test.o: test.cpp 
	g++ test.cpp -c -o test.o

# pageLoader.o i hamar petq en 'PageLoader.cpp/hpp' n
PageLoader.o: PageLoader.cpp PageLoader.hpp
	g++ PageLoader.cpp -c -o PageLoader.o

# loadResult.o i hamar petq en 'LoadResult.cpp/hpp' files
LoadResult.o: LoadResult.cpp LoadResult.hpp
	g++ LoadResult.cpp -c -o LoadResult.o

parser.o: parser.cpp parser.hpp
	g++ parser.cpp -lgumbo -c -o parser.o
	
# clean will remove all obejct and executable files
clean:
	rm *.o test
