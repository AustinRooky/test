# 编译器与参数（使用 clang++）
CXX = clang++
CXXFLAGS = -Wall -g -std=c++17

# 目标程序名
TARGET = main

# 默认目标：编译生成可执行文件
all: $(TARGET)

# 链接规则（仅 main.cpp）
$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) -o $(TARGET) main.cpp

# 清理命令
clean:
	rm -f $(TARGET)