CC = g++
CXX = g++
CPPFLAGS = -MMD
CXXFLAGS = -g -std=c++11
LDLIBS = -lm -ldl
SRCS = eval_state.cc game_state.cc number_one_main.cc player.cc zs_wrap.cc

number_one_main: $(SRCS:.cc=.o) liblpsolve55.a

clean:
	rm -f number_one_main *.o *~

.PHONY: clean

-include $(SRCS:.cc=.d)
