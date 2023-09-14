echo "starting zip..."
rm ./CustomImagesServer.zip
cd CustomImagesServer/
zip -r ../CustomImagesServer.zip *
cd ..
sha1sum CustomImagesServer.zip > CustomImagesServer.sha1
git add .
git commit -m "$*"
git push -u
