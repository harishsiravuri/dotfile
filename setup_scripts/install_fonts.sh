mkdir ~/.dotfiles/fonts
curl "https://noto-website-2.storage.googleapis.com/pkgs/NotoSans-hinted.zip" -o ~/.dotfiles/fonts/noto-sans-hinted.zip
curl "https://noto-website-2.storage.googleapis.com/pkgs/NotoSerif-hinted.zip" -o ~/.dotfiles/fonts/noto-serif-hinted.zip
curl "https://noto-website-2.storage.googleapis.com/pkgs/NotoMono-hinted.zip" -o ~/.dotfiles/fonts/noto-mono-hinted.zip

cd ~/.dotfiles/fonts
unzip -n '*.zip'
sudo mkdir -p /usr/share/fonts/opentype/noto
sudo cp *otf *otf /usr/share/fonts/opentype/noto
sudo fc-cache -f -v
