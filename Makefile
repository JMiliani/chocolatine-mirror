##
## EPITECH PROJECT, 2026
## G-DOP-200-LYN-2-1-chocolatine-11
## File description:
## Makefile
##

SRC = src/main.c

OBJ = $(SRC:.c=.o)

NAME = binary

CC = epiclang

CFLAGS = -Wall -Wextra -Werror -Iinclude
LDFLAGS =

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

tests_run: all
	./$(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re fclean
