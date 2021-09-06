# No greeting when starting an interactive shell.
function fish_greeting
end

starship init fish | source

# Set NVM version
set --universal nvm_default_version latest

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
