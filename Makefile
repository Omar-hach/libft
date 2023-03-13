# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ohachami <ohachami@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/03 21:59:03 by ohachami          #+#    #+#              #
#    Updated: 2022/11/07 15:12:52 by ohachami         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a


SRC = ft_atoi.c\
	ft_bzero.c\
	ft_calloc.c\
	ft_isalnum.c\
	ft_isalpha.c\
	ft_isascii.c\
	ft_isdigit.c\
	ft_isprint.c\
	ft_itoa.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_memcpy.c\
	ft_memset.c\
	ft_putchar_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\
	ft_putstr_fd.c\
	ft_strchr.c\
	ft_strdup.c\
	ft_striteri.c\
	ft_strlcat.c\
	ft_strjoin.c\
	ft_strlcpy.c\
	ft_strlen.c\
	ft_strncmp.c\
	ft_strrchr.c\
	ft_substr.c\
	ft_split.c\
	ft_memmove.c\
	ft_strnstr.c\
	ft_tolower.c\
	ft_toupper.c\
	ft_strtrim.c\
	ft_strmapi.c\

Bonus_SRC = ft_lstnew.c\
	ft_lstadd_front.c\
	ft_lstsize.c\
	ft_lstlast.c\
	ft_lstadd_back.c\
	ft_lstiter.c

CC = gcc

OBJ = $(SRC:.c=.o)

Bonus_OBJ = $(Bonus_SRC:.c=.o)

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

bonus: $(Bonus_OBJ) $(OBJ)
	ar rc $(NAME) $(OBJ) $(Bonus_OBJ)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re
