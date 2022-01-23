eval (starship init fish)

set -Ux CHROME_PATH /usr/bin/google-chrome

# Aliases
alias npm=pnpm
alias sudo=doas
alias gpg=gpg2

# Start SSH agent and add all keys.
fish_ssh_agent
for file in ~/.ssh/*id_ed25519
      ssh-add $file &> /dev/null
end

# Add Deno to PATH
set DENO_INSTALL /home/pranav/.deno
fish_add_path $DENO_INSTALL/bin

# Neovide function
function neovide
    neovide.exe --wsl
end

# set gpg tty
set GPG_TTY (tty)

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# Bun
set -Ux BUN_INSTALL "/home/pranav/.bun"
set -px --path PATH "/home/pranav/.bun/bin"

