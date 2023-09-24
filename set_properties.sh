path="/home/thomaserveur/Minecraft/unity_server/server.properties"
sha1=$(echo "$(cat *.sha1)" | cut -d " " -f 1)
replace="resource-pack-sha1=$sha1"
echo $replace
sed -i 58s/.*/$replace/ $path
