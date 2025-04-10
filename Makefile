# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qmennen <qmennen@student.codam.nl>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/10 17:47:14 by qmennen           #+#    #+#              #
#    Updated: 2025/04/08 16:40:54 by qmennen          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC_DIR=src
OBJ_DIR=obj
INC_DIR=include

VPATH = src:src/ft_printf:src/get_next_line:src/memory:src/write:src/convert:src/list:src/string

GREEN = \033[32m
YELLOW = \033[33m
BLUE = \033[34m
RED = \033[31m
RESET = \033[0m

CC = cc
CFLAGS = -Wall -Werror -Wextra
RM = rm -rf
AR = ar crs

PRINT_F =	ft_printf.c					\
			ft_print_token.c			\
			handlers.c					\
			print_util_2.c				\
			print_util.c				\

GET_NEXT_LINE = get_next_line.c			\
				get_next_line_utils.c	\

SOURCES	=	ft_atoi.c					\
			ft_itoa.c					\
			ft_bzero.c					\
			ft_calloc.c					\
			ft_isalnum.c				\
			ft_isalpha.c				\
			ft_isascii.c				\
			ft_isdigit.c				\
			ft_isprint.c				\
			ft_memchr.c					\
			ft_memcmp.c					\
			ft_memcpy.c					\
			ft_memmove.c				\
			ft_memset.c					\
			ft_strchr.c					\
			ft_strdup.c					\
			ft_strlcat.c				\
			ft_strlcpy.c				\
			ft_strlen.c					\
			ft_strncmp.c				\
			ft_strnstr.c				\
			ft_strrchr.c				\
			ft_tolower.c				\
			ft_toupper.c				\
			ft_substr.c					\
			ft_strjoin.c				\
			ft_strtrim.c				\
			ft_split.c					\
			ft_strmapi.c				\
			ft_striteri.c				\
			ft_putchar_fd.c				\
			ft_putstr_fd.c				\
			ft_putendl_fd.c				\
			ft_putnbr_fd.c				\
			ft_lstnew.c					\
			ft_lstadd_front.c			\
			ft_lstsize.c				\
			ft_lstlast.c				\
			ft_lstadd_back.c			\
			ft_lstdelone.c				\
			ft_lstclear.c				\
			ft_lstiter.c				\
			ft_lstmap.c					\
			$(PRINT_F)					\
			$(GET_NEXT_LINE)

OBJS = $(addprefix $(OBJ_DIR)/, $(SOURCES:.c=.o));

$(NAME): $(OBJS)
	@printf "\n$(YELLOW)* building libft *$(RESET)\n"
	@$(AR) $@ $^
	@printf "$(GREEN)* done building libft *$(RESET)\n"

$(OBJ_DIR):
	@mkdir -p $@

$(OBJ_DIR)/%.o: %.c | $(OBJ_DIR)
	@printf "$(YELLOW)* compiling $< *\r$(RESET)"
	@$(CC) $(CFLAGS) -I $(INC_DIR) -c $< -o $@

all: $(NAME)
	
clean:
	@printf "$(RED)* cleaning object files *$(RESET)\n"
	@$(RM) $(OBJS)

fclean:	clean
	@echo "$(RED)* cleaning $(NAME) *$(RESET)\n"
	@$(RM) $(NAME)
	@rm -rf $(OBJ_DIR)

re:	fclean all

.PHONY:	all clean fclean re bonus
