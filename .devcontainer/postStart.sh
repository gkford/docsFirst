#!/bin/bash

# Define the export command
export_command='export OLLAMA_HOST=http://host.docker.internal:11434'

# Function to append the export command to a file and create the file if it doesn't exist
append_export_command() {
    local file=$1
    if [ ! -f "$file" ]; then
        echo "#!/bin/bash" > "$file"
        echo "Created $file"
    fi
    echo "$export_command" >> "$file"
    echo "Added OLLAMA_HOST to $file"
}

# Append to .bashrc
append_export_command "$HOME/.bashrc"

# Append to .zshrc
append_export_command "$HOME/.zshrc"

# Inform the user
echo "Please restart your terminal or source the modified files to apply the changes."
