echo "starting zip..."
zip -r ./CustomImagesServer.zip CustomImagesServer/
git add .
git commit -m "$*"
git push -u
