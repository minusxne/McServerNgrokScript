tmux new-session -d -s minecraft
tmux split-window -h -t minecraft        # Pane 1: right side
tmux split-window -v -t minecraft:0.0    # Pane 0: left top

# Pane 0: Run the Minecraft server (server.jar)
tmux send-keys -t minecraft:0.0 "cd ~/Downloads/ChristmasSv" C-m
sleep 1
tmux send-keys -t minecraft:0.0 "java -Xmx12G -Xms8G -jar fabric-server-mc.1.21.1-loader.0.16.9-launcher.1.0.1.jar nogui " C-m

# Pane 1: Run ngrok on TCP port 25565
tmux send-keys -t minecraft:0.1 "ngrok tcp 25565 --log=stdout | grep url=" C-m

# Pane 2: Allow user to kill processes
tmux send-keys -t minecraft:0.2 "clear; echo -e 'Press ENTER in this terminal window to \e[31mkill all java and ngrok processes\e[0m'; read -p ''; killall java && killall ngrok; echo 'killed processes successfully'; sleep 2; tmux kill-session -t minecraft" C-m

# Attach to the tmux session
tmux select-pane -t minecraft:0.2
tmux refresh-client
tmux attach -t minecraft
