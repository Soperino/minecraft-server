# Minecraft Server Template
This is a handful of important files, as well as some that make it easier for server administration, that I personally use for my Minecraft servers.

To use this, just clone this repository, and edit the necessary files.

## Usage & Disclaimers
### Minecraft EULA
The usage of this repository implies that you have agreed to the Minecraft EULA, which is necessary to run a Minecraft server. You can read that here:
https://account.mojang.com/documents/minecraft_eula

### Server launch scripts
The `start.bat` and `start.sh` files are simple scripts that automate the launching of the Minecraft server, without having to manually type in
```sh
java -jar server.jar
```
When using either file, you must change the appropriate variable to the name of the server jar you are using. For example, if you are using the [vanilla server jar](https://www.minecraft.net/en-us/download/server), you must change the `jarfile` variable to `minecraft_server.VERSION.jar`.

### Service File
This file is used by Linux distributions that come with systemd. This file allows you to create a system service which allows you to control your Minecraft server via systemd commands.

To use this file, you must be using a Linux distribution with `systemd` and `screen` installed. Most users can install `screen` via their distribution's package manager.

Rename the file to something along the lines of `mc-server.service` (mc-server being whatever you choose to name it). Then, edit the file and replace everything in brackets `[]`, which should just be 
```
[SERVER_NAME]
[SERVER_DIRECTORY]
[USERNAME]
[SHORT_SERVER_NAME]
```

Now, you can register this file with systemd by using
```sh
systemctl enable /path/of/service_file.service
```

### info.yaml
The `info.yaml` file is used for administrators to better distinguish and organize their own Minecraft servers. I have found myself constantly juggling between a bunch of servers I previously created that I don't remember about. This file makes it easier to organize and prevent that situation. It is *not* necessary to use to run a server, and is entirely optional.

Some server jars may use the `info.yaml` for other purposes. If that is the case for you, you may delete the `info.yaml` file that comes with this repository, or rename it if you find it useful.