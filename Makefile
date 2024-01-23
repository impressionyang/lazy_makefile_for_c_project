# lazy build C project Makefiles by impressionyang
# user config values
CC="E:\\impressionyang\\scoop\\apps\\mingw\\12.2.0\\bin\\gcc.exe"
PROJECT=test

# patern config
FILES_PATH  := ./
SRC_FILES_SUFFIX := %.c
HDR_FILES_SUFFIX := %.h

# define func to remove_same_str
define remove_same_str =
  $(eval seen :=)
  $(foreach _,$1,$(if $(filter $_,${seen}),,$(eval seen += $_)))
  ${seen}
endef

# find recursive all files
rwildcard=$(wildcard $1$2) $(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2))

# get source file and header file
FIND_ALL_FILES := $(foreach files_path,$(FILES_PATH), $(call rwildcard,$(files_path),*.*) ) 
SOURCES  := $(filter $(SRC_FILES_SUFFIX),$(FIND_ALL_FILES)) 
SOURCES  := $(SOURCES:$(LOCAL_PATH)/%=%)
HEADERS  := $(filter $(HDR_FILES_SUFFIX),$(FIND_ALL_FILES)) 
HEADERS  := $(HEADERS:$(LOCAL_PATH)/%=%)

# fillter out all include path
FIND_ALL_FILES_DIR := $(dir $(foreach files_path,$(FILES_PATH), $(call rwildcard,$(files_path),*/) ) )
INC_DIRS := $(call remove_same_str,$(FIND_ALL_FILES_DIR))
INC_DIRS := $(subst ./, -I./, $(INC_DIRS))
INC_DIRS := $(wordlist 1, $(words $(INC_DIRS)), $(INC_DIRS))

# debug print info, no need to be change
# $(info "INC_DIRS")
# $(info $(INC_DIRS))
# $(info "HEADERS")
# $(info $(HEADERS))
# $(info "SOURCES")
# $(info $(SOURCES))

# compile job
all : 
	$(CC) -fdiagnostics-color=always -g $(SOURCES) $(HEADERS) $(INC_DIRS) -o $(PROJECT)

# virtual clean job
.PHONY : clean
clean:
	$(warning "remove some files but it may not exist because the OS different")
	rm $(PROJECT).exe $(PROJECT)
