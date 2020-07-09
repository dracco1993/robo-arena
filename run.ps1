# Save current directory
$CurrentDir = $(get-location).Path;

# Compile the bots
C:\"Program Files"\AdoptOpenJDK\jdk-14.0.1.7-hotspot\bin\javac.exe -target 8 -source 8 -d .\robots_output\ -cp "C:\robocode\libs\robocode.jar" .\robots_source\Dracco.java

# Move to the robocode install
cd C:\robocode\

# Run robocode
C:\robocode\robocode.bat

# Move back to the original directory
cd $CurrentDir
