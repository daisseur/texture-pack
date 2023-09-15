echo "starting zip..."
rm ./CustomImagesServer.zip
git rm --cached *py
git rm --cached *sh
cd CustomImagesServer/
zip -r ../CustomImagesServer.zip *
cd ..
sha1sum CustomImagesServer.zip > CustomImagesServer.sha1
git add .
git commit -m "$*"
git push -u
path="/home/thomaserveur/Minecraft/unity_server/server.properties"
sha1=$(echo "$(cat *.sha1)" | awk '{print $1}')
replace="resource-pack-sha1=$sha1"
echo $replace
sed -i 58s/.*/$replace/ $path
