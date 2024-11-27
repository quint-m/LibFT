# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qmennen <qmennen@student.codam.nl>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/10 17:47:14 by qmennen           #+#    #+#              #
#    Updated: 2024/10/16 19:16:42 by qmennen          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC_DIR=srcs

SRC	=	$(SRC_DIR)/ft_atoi.c		\
		$(SRC_DIR)/ft_itoa.c		\
		$(SRC_DIR)/ft_bzero.c		\
		$(SRC_DIR)/ft_calloc.c		\
		$(SRC_DIR)/ft_isalnum.c		\
		$(SRC_DIR)/ft_isalpha.c		\
		$(SRC_DIR)/ft_isascii.c		\
		$(SRC_DIR)/ft_isdigit.c		\
		$(SRC_DIR)/ft_isprint.c		\
		$(SRC_DIR)/ft_memchr.c		\
		$(SRC_DIR)/ft_memcmp.c		\
		$(SRC_DIR)/ft_memcpy.c		\
		$(SRC_DIR)/ft_memmove.c		\
		$(SRC_DIR)/ft_memset.c		\
		$(SRC_DIR)/ft_strchr.c		\
		$(SRC_DIR)/ft_strdup.c		\
		$(SRC_DIR)/ft_strlcat.c		\
		$(SRC_DIR)/ft_strlcpy.c		\
		$(SRC_DIR)/ft_strlen.c		\
		$(SRC_DIR)/ft_strncmp.c		\
		$(SRC_DIR)/ft_strnstr.c		\
		$(SRC_DIR)/ft_strrchr.c		\
		$(SRC_DIR)/ft_tolower.c		\
		$(SRC_DIR)/ft_toupper.c		\
		$(SRC_DIR)/ft_substr.c		\
		$(SRC_DIR)/ft_strjoin.c		\
		$(SRC_DIR)/ft_strtrim.c		\
		$(SRC_DIR)/ft_split.c		\
		$(SRC_DIR)/ft_strmapi.c		\
		$(SRC_DIR)/ft_striteri.c	\
		$(SRC_DIR)/ft_putchar_fd.c	\
		$(SRC_DIR)/ft_putstr_fd.c	\
		$(SRC_DIR)/ft_putendl_fd.c	\
		$(SRC_DIR)/ft_putnbr_fd.c	\
		$(SRC_DIR)/ft_printf.c		\
		$(SRC_DIR)/ft_print_token.c	\
		$(SRC_DIR)/handlers.c		\
		$(SRC_DIR)/print_util_2.c	\
		$(SRC_DIR)/print_util.c		\
		$(SRC_DIR)/ft_lstnew.c		\
		$(SRC_DIR)/ft_lstadd_front.c\
		$(SRC_DIR)/ft_lstsize.c		\
		$(SRC_DIR)/ft_lstlast.c		\
		$(SRC_DIR)/ft_lstadd_back.c	\
		$(SRC_DIR)/ft_lstdelone.c	\
		$(SRC_DIR)/ft_lstclear.c	\
		$(SRC_DIR)/ft_lstiter.c		\
		$(SRC_DIR)/ft_lstmap.c		\

OBJS = $(SRC:.c=.o)

CC = cc
CFLAGS = -Wall -Werror -Wextra
RM = rm -rf
AR = ar crs

$(NAME): $(OBJS)
	$(AR) $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@

all: $(NAME)

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY:	all clean fclean re bonus
