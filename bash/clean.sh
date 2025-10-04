#!/bin/bash

# Use ANSI escape codes for colored output
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

for arg in "$@"; do
    if [[ "$arg" == "-h" || "$arg" == "--help" ]]; then
        echo -e "${BLUE}Usage: $0 [options]${NC}"
        echo -e "${BLUE}Options:${NC}"
        echo -e "  -h, --help      Show this help message and exit"
        echo -e "  -i, --install   Run 'yarn install' after cleaning"
        exit 0
    fi
done

echo -e "${YELLOW}Cleaning up Nuxt project...${NC}"

echo -e "${YELLOW}Removing .nuxt directory...${NC}"
rm -rf .nuxt
echo -e "${YELLOW}Removing node_modules directory...${NC}"
rm -rf node_modules
echo -e "${YELLOW}Removing .output directory...${NC}"
rm -rf .output

INSTALL_FLAG=false

# Check for -i or --install flag
for arg in "$@"; do
    if [[ "$arg" == "-i" || "$arg" == "--install" ]]; then
        INSTALL_FLAG=true
        break
    fi
done

switch_node_version() {
    # Try to source nvm if not already available, then run nvm use if possible
    if [ -z "$NVM_DIR" ]; then
        export NVM_DIR="$HOME/.nvm"
    fi

    if [ ! -s "$NVM_DIR/nvm.sh" ]; then
        echo -e "${RED}nvm not found at $NVM_DIR/nvm.sh. Exiting.${NC}"
        exit 1
    fi

    . "$NVM_DIR/nvm.sh"

    if ! command -v nvm >/dev/null 2>&1; then
        echo -e "${RED}nvm command not available after sourcing. Exiting.${NC}"
        exit 1
    fi

    NVMRC_FILE=".nvmrc"
    if [ ! -f "$NVMRC_FILE" ]; then
        echo -e "${RED}No .nvmrc file found. Exiting.${NC}"
        exit 1
    fi

    echo -e "${YELLOW}Switching to Node version from .nvmrc...${NC}"
    nvm use
    if [ $? -ne 0 ]; then
        echo -e "${RED}Failed to switch Node version with nvm. Exiting.${NC}"
        exit 1
    fi
}

if $INSTALL_FLAG; then
    echo -e "${YELLOW}Running 'yarn install'...${NC}"
    switch_node_version
    yarn install
else
    read -p "Do you want to run 'yarn install' now? (y/n): " yn
    if [[ -z "$yn" || "$yn" =~ ^[Yy] ]]; then
        echo -e "${YELLOW}Running 'yarn install'...${NC}"
        switch_node_version
        yarn install
    else
        echo -e "${YELLOW}Skipping 'yarn install'.${NC}"
    fi
fi
