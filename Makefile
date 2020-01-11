NAME = ft_ls
SRC_PATH = ./srcs/
LFT_PATH = ./libft/
PFT_PATH = ./libft/ft_printf/
LIB_PATH = ./libft/
INC_PATH = ./includes/
FLAGS = -Wall -Werror -Wextra
TEST_FLAGS = -g

RED  = "\033[0;31m"
GREEN  = "\033[0;32m"
BLUE = "\033[0;34m"
CYAN = "\033[0;36m"
CLEAR = "\033[0m"

INC = $(addprefix -I, $(INC_PATH))

LIBS = -lft -lftprintf

LFT = libft.a
PFT = libftprintf.a

LS_SRC_NAME =	ft_ls.c
				
LS_SRC = $(addprefix $(SRC_PATH), $(LS_SRC_NAME))
LS_OBJ = $(LS_SRC_NAME:.c=.o)

.PHONY = all clean fclean re

all: $(LFT) $(NAME)

$(LFT):
	@make -C $(LFT_PATH)
	@make -C $(PFT_PATH)


$(NAME): $(LS_SRC)
	@gcc $(FLAGS) $(INC) -o $(NAME) $(LS_SRC) -L $(LIB_PATH) $(LIBS)
	@echo $(GREEN)"Executable compiled" $(CLEAR)

clean:
	@make -C $(LFT_PATH) clean
	@make -C $(PFT_PATH) clean
	@/bin/rm -f $(LS_OBJ)
	@echo $(RED)"Removed all object files" $(CLEAR)

fclean: clean
	@make -C $(LFT_PATH) fclean
	@make -C $(PFT_PATH) fclean
	@/bin/rm -f $(NAME)
	@/bin/rm -rf a.out a.out.dSYM $(NAME).dSYM
	@echo $(RED)"Deleted executable files" $(CLEAR)

re: fclean all

test: fclean $(LFT) 
	@gcc $(TEST_FLAGS) $(INC) -o $(NAME) $(LS_SRC) -L $(LIB_PATH) $(LIBS)
	@echo $(GREEN)"Test compiled" $(CLEAR)
