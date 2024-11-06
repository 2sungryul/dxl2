CX = g++   
CXFLAGS = -g -Wall 				
DXLFLAGS = -I/usr/local/include/dynamixel_sdk -ldxl_x64_cpp 		

TARGET = dxl2
OBJS = main.o dxl.o
$(TARGET) :  $(OBJS)
	$(CX) -o $(TARGET) $(OBJS) $(DXLFLAGS)
main.o : main.cpp
	$(CX) $(CXFLAGS) -c main.cpp $(DXLFLAGS)
dxl.o : dxl.hpp dxl.cpp
	$(CX) $(CXFLAGS) -c dxl.cpp $(DXLFLAGS)

.PHONY: clean 
clean:
	rm -rf $(TARGET) $(OBJS)