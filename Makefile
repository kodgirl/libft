# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bjasper <bjasper@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/04 16:32:48 by bjasper           #+#    #+#              #
#    Updated: 2019/09/21 13:10:38 by bjasper          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = src/*.c
FLAG = -Wall -Wextra -Werror
H_LIBFT	= includes/libft.h
OS = $(SRCS:.c=.o)

all: $(NAME)

%.o: %.c
	gcc $(FLAG) -c $< -o $@

$(NAME): $(OS)
	ar rc $(NAME) $(OS)
	ranlib $(NAME)
	
clean:
	rm -rf $(OS)

fclean: clean
	rm -rf $(NAME)

re: fclean all
