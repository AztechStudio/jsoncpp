
INCLUDEDIR += -I./include
INCLUDEDIR += -I./src/lib_json/
OBJS += ./src/lib_json/json_reader.o
OBJS += ./src/lib_json/json_value.o
OBJS += ./src/lib_json/json_writer.o

COMPILEOPTION += -fPIC
COMPILEOPTION += -Wall
COMPILEOPTION += -std=c++11

OUTPUT_DIR = jsonLib
all:$(OBJS)
	rm -rf $(OUTPUT_DIR)
	mkdir -p $(OUTPUT_DIR)
# 编译静态库
	$(AR) cr libjsoncpp.a $^
# 编译动态库
	$(CXX) -shared -o libjsoncpp.so $^
	mv libjsoncpp.so jsonLib/
	mv libjsoncpp.a  jsonLib/
	cp include/json/*.h jsonLib/
	
	

.cpp.o:
	$(CXX) -c -o $*.o $(COMPILEOPTION) $(INCLUDEDIR)  $*.cpp
.PHONY: clean
clean:
	rm -rf $(OBJS) $(OUTPUT_DIR)
