echo "starting zip..."
zip -j ./CustomImagesServer.zip CustomImagesServer
sha1sum CustomImagesServer.zip > CustomImagesServer.sha1
git add .
git commit -m "$*"
git push -u
