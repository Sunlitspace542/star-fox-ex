# List of sound files to build
BUILD_FILES := \
    SGSOUND0 \
    SGBGM1 \
    SGBGM2 \
    SGBGM3 \
    SGBGM4 \
    SGBGM5 \
    SGBGM6 \
    SGBGM7 \
    SGBGM8 \
    SGBGM9 \
    SGBGM10 \
    SGBGM11 \
    SGBGMA \
    SGBGMB \
    SGBGMC \
    SGBGMD \
    SGBGME \
    SGBGMF \
    SGBGMG \
    SGBGMH \
    SGBGMI \
    SGBGMJ \
    SGBGMK \
    SGBGML \
    SGBGMM \
    SGBGMN \
    SGBGMO \
    SGBGMP \
    SGSOUND1 \
    SGSOUND2 \
    SGSOUND3 \
    SGSOUND4 \
    SGSOUND5 \
    SGSOUND6 \
    SGSOUND7 \
    SGSOUND8 \
    SGSOUND9 \
    SGSOUNDA \
    kazaru \
    newmap \
    YOSHIBGM \
    bgmspec \
    comet \
    kazaru2 \
    sf2sele \
    smb3swim \
    gnat \
    metropo \
    seckboss \
    EIS \
    eschatos \
    sp0rch \
    hurr \
    alpha \
    australi \
    gekkou \
    funkm \
    interst \
    menu \
    SHMUPPY \
    kuruso \
    pebble \
    tolimas \
    zeromus \
    BOSSBGMK \
    BOSSBGMP \
    BOSSBGMS \
    BROSE \
    sectork \
    tarkus \
    kidodora \
    linktron \
    newb2 \
    newboss1 \
    Papetoon \
    SFESTITL

# Change $(BUILD_FILES) to the name(s) of the BIN(s) you want to build, if not all of them.
# e.g. BUILD ?= SGSOUND1 SGSOUND2 SGSOUND3
BUILD ?= $(BUILD_FILES)

# Output BIN files
BIN_FILES := $(addsuffix .BIN, $(BUILD))

.PHONY: all
all: setup $(BIN_FILES)

# Check that build directory exists, and if not, create it
setup:
	@if not exist .\build\ mkdir build

# Rule to build each BIN file
%.BIN:
	@echo Assembling $@
#	@if exist build\$*.bin del build\$*.bin
	@cd $* && ..\asar.exe --no-title-check --symbols=nocash $*.asm ..\build\$@
#	@cd $* && ..\asar.exe --no-title-check $*.asm ..\build\$@
	@echo Assembled $@

# Clean target
clean:
	del /Q build\
