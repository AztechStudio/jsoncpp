
INCLUDEDIR += -I../jsonLib/
OBJS += ./main.o
LIBDIR = -L../jsonLib
LIBS = ../jsonLib/libjsoncpp.a 

COMPILEOPTION += -Wall
COMPILEOPTION += -std=c++11
TARGET = test
LDFLAG += -Wl,-gc-sections -O2

all:$(OBJS)
	$(CXX)  $(LDFLAG) -o $(TARGET) $^ $(LIBDIR) $(LIBS)
	$(STRIP) $(TARGET)
	
.cpp.o:
	$(CXX) -c -o $*.o $(COMPILEOPTION) $(INCLUDEDIR)  $*.cpp
.PHONY: clean
clean:
	rm -rf $(OBJS) $(TARGET) *.json
