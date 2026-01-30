CC = gcc
CFLAGS = -Wall -Wextra -O2

TARGET = total_system

# 소스 파일 목록 (팀원들이 파일을 추가할 때마다 여기에 작성)
SRCS = main.c rpi_server.c

OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJS)

.PHONY: all clean
