# Minecraft Server Deployment Script with Ngrok

A simple script to deploy a Minecraft server with Ngrok from a local machine a bit easier. Made specifically for the [Fish Shell](https://fishshell.com/).

## Requirements

This script only works under the following conditions:

- You have a Linux machine with tmux,echo,java,ngrok (fish shell, optional) installed
- You go through the script and update the file path of the server jarfile according to your machine's specific setup.

## Setup Instructions

1. Clone the repository or download the script.

    ```bash
   git clone https://github.com/minusxne/McServerNgrokScript
   ```

2. Open the script in your favorite text editor.
3. Update the paths inside the script to match your system's setup.
4. Make sure [Ngrok](https://ngrok.com/) is installed and configured.
5. Run the script using the Fish shell (recommended for compatibility):

   ```bash
   fish path_to_script.fish
   ```
