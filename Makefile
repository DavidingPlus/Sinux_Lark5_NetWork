source =  
target = a.out

CXX = g++
CXXFLAG = -Wall -g -std=c++23 
EXTRAFLAG =

ifdef windir
ASAN =
RM = del
EXTRAFLAG = -DWIN
target = a.out
else
# 这玩意是内存消毒器，不建议使用
# ASAN = -fsanitize=address
RM = rm
endif

LIB = -lpthread

all:
	$(CXX) $(source) $(CXXFLAG) $(ASAN) $(EXTRAFLAG) -o $(target) $(LIB)

clean:
	$(RM) $(target)
