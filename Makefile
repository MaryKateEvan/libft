# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mevangel <mevangel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/21 15:04:14 by mevangel          #+#    #+#              #
#    Updated: 2023/04/09 20:47:03 by mevangel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# -*- Makefile -*-

# Variable always in CAPITAL LETTERS

NAME := libft.a

CFLAGS := -Wall -Werror -Wextra
#ARFLAGS := -rcs 
CC := cc 

SRCS := ft_isalpha.c \
		ft_isdigit.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_strlen.c \
		ft_memset.c \
		ft_bzero.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_strlcpy.c \
		ft_strlcat.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strncmp.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strnstr.c \
		ft_atoi.c \
		ft_calloc.c \
		ft_strdup.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_split.c \
		ft_strtrim.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_striteri.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c

OBJS := $(SRCS:%.c=%.o)

BONUS_SRCS := ft_lstnew.c 

BONUS_OBJS := $(BONUS_SRCS:%.c=%.o)

# To call a variable in a rule use 
# $(VARIABLE)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) -c $(SRCS)

clean:
	rm -f $(OBJS) $(BONUS_OBJS)
	
fclean: clean
	rm -f $(NAME)

bonus: $(BONUS_OBJS)
	ar rcs $(NAME) $(BONUS_OBJS)

re: fclean all

all: $(NAME) bonus

.PHONY: all clean fclean bonus re
