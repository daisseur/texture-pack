echo "starting zip..."
rm ./CustomImagesServer.zip
zip -jr ./CustomImagesServer.zip CustomImagesServer
sha1sum CustomImagesServer.zip > CustomImagesServer.sha1
git add .
git commit -m "$*"
git push -u
