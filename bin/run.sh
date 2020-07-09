#!/bin/bash

# Compile the bots
# TODO: Remove the hardcoded javac paths from here
for f in robots_source/*.java; do
  echo "Comiling $f"
  "/mnt/c/Program Files/AdoptOpenJDK/jdk-14.0.1.7-hotspot/bin/javac.exe" -target 8 -source 8 -d ./robots_output/ -cp "C:\robocode\libs\robocode.jar" $f
done

# Move to the robocode install
cd /mnt/c/robocode/

# Run robocode
echo "Running robocode"
"/mnt/c/Program Files/AdoptOpenJDK/jdk-14.0.1.7-hotspot/bin/java.exe" -Xmx512M -cp libs/robocode.jar -XX:+IgnoreUnrecognizedVMOptions "--add-opens=java.base/sun.net.www.protocol.jar=ALL-UNNAMED" "--add-opens=java.base/java.lang.reflect=ALL-UNNAMED" "--add-opens=java.desktop/javax.swing.text=ALL-UNNAMED" "--add-opens=java.desktop/sun.awt=ALL-UNNAMED" robocode.Robocode
