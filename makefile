# Cross-platform Makefile to install Raylib build dependencies

.PHONY: deps

UNAME_S := $(shell uname -s)

deps:
ifeq ($(OS),Windows_NT)
	@echo "Detected Windows"
	@echo "Installing dependencies using Chocolatey (basic) and MSYS2 (for X11/GL libs)..."
	@choco install -y git cmake mingw
	@echo "For full Linux-style libs, install via MSYS2:"
	@echo "  pacman -S mingw-w64-x86_64-alsa-lib mingw-w64-x86_64-libx11 mingw-w64-x86_64-libxrandr"
	@echo "  pacman -S mingw-w64-x86_64-libxi mingw-w64-x86_64-mesa mingw-w64-x86_64-glu"
	@echo "  pacman -S mingw-w64-x86_64-libxcursor mingw-w64-x86_64-libxinerama"
	@echo "  pacman -S mingw-w64-x86_64-wayland mingw-w64-x86_64-libxkbcommon"
else ifeq ($(UNAME_S),Linux)
	@echo "Detected Linux"
	sudo apt update
	sudo apt install -y build-essential git \
		libasound2-dev libx11-dev libxrandr-dev libxi-dev \
		libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev \
		libxinerama-dev libwayland-dev libxkbcommon-dev
else ifeq ($(UNAME_S),Darwin)
	@echo "Detected macOS"
	brew update
	brew install git cmake
	@echo "Installing Linux-style dependencies via Homebrew equivalents..."
	brew install alsa-lib x11 libxcursor libxrandr libxi mesa glu xinerama wayland libxkbcommon || true
endif

