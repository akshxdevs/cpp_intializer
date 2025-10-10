#!/bin/bash

# ========== COLORS ==========
GREEN="\033[0;32m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
RESET="\033[0m"
WHITE_BOLD="\033[1;97m"

# ======Create Project=======
loading() {
  local msg=$1
  echo -ne "${CYAN}${msg}${RESET} "
  for i in {1..3}; do
    echo -ne "."
    sleep 0.3
  done
  echo ""
}

# --------------------------
# Final ASCII banner printed after success
# --------------------------
print_final_banner() {
  cat <<'ASCII'

.__                                 .__                 __                   .___      
|  |__ _____  ______ ______ ___.__. |  |   ____   _____/  |_  ____  ____   __| _/____  
|  |  \\__  \ \____ \\____ <   |  | |  | _/ __ \_/ __ \   __\/ ___\/  _ \ / __ |/ __ \ 
|   Y  \/ __ \|  |_> >  |_> >___  | |  |_\  ___/\  ___/|  | \  \__(  <_> ) /_/ \  ___/ 
|___|  (____  /   __/|   __// ____| |____/\___  >\___  >__|  \___  >____/\____ |\___  >
     \/     \/|__|   |__|   \/                \/     \/     \/          \/           \/    \/ 

ASCII
}

# ========== MAIN ==========
loading
if [[ "$1" == "init" ]]; then
  if [ -n "$2" ]; then
    folder="$2"
  else
    read -p $'\033[0;34m? \033[1;97mWhat is your project named:\033[0m ' folder
  fi
else
  echo -e "${RED}Usage:${RESET} cpp init [project-name]"
  exit 1
fi

if [ -z "$folder" ]; then
  echo -e "${RED}❌ Project name cannot be empty!${RESET}"
  exit 1
fi

base_dir=$(pwd)

loading "📁 Creating project directory"
mkdir -p "$base_dir/$folder"

loading "📂 Entering project folder"
cd "$base_dir/$folder" || exit

loading "📝 Generating main.cpp"
cat <<EOL >main.cpp
#include <bits/stdc++.h>
using namespace std;

int main() {
  // Write your solution here

  return 0;
}
EOL

loading "✅ Finalizing setup"

echo ""
echo -e "${GREEN}Success! ${RESET}Created test-app at ${base_dir}.${RESET}"
echo ""
echo -e "${YELLOW}cd $folder${RESET} to get started."
echo ""

# Print final ASCII banner
print_final_banner

