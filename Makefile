NAME = x

SOURCES = ./
SOURCES_FILES = $(wildcard *.cpp)
SOURCES_FILES_FULL = $(addprefix $(SOURCES)/,$(SOURCES_FILES))

OBJECTS = ./objects
OBJECTS_FILES = $(patsubst $(SOURCES)/%.cpp,$(OBJECTS)/%.o,$(SOURCES_FILES_FULL))

DEPENDENCIES = ./objects
DEPENDENCIES_FILES = $(OBJECTS_FILES:.o=.d)

CCFLAGS = -Wfatal-errors -Wall -Wextra -Werror -std=c++98 -pedantic-errors

all: $(NAME)

$(NAME): $(OBJECTS_FILES)
	g++ $^ -o $@

-include $(DEPENDENCIES_FILES)
$(OBJECTS)/%.o: $(SOURCES)/%.cpp
	g++ $(CCFLAGS) -MMD -c $< -o $@

clean:
	rm -f $(OBJECTS_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all 
