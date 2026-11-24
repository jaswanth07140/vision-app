#!/bin/bash
# Install Vision on Linux (including ChromeOS's Linux container):
# a launcher command, the Vision ring icon, and an app entry named
# "Vision" so it shows up in the app grid like any other app.
set -e
cd "$(dirname "$0")"
mkdir -p "$HOME/.local/bin" "$HOME/.local/share/applications" "$HOME/.local/share/icons"
cp vision-web "$HOME/.local/bin/vision-web"
chmod +x "$HOME/.local/bin/vision-web"
cp vision-web.png "$HOME/.local/share/icons/vision.png"
# Remove the old "Vision Web" entry if an earlier install left one.
rm -f "$HOME/.local/share/applications/Vision Web.desktop"
# Point the icon at its absolute path so the launcher always finds the
# Vision ring (a bare icon name falls back to the generic Linux penguin).
sed "s|^Icon=.*|Icon=$HOME/.local/share/icons/vision.png|" "Vision.desktop" > "$HOME/.local/share/applications/Vision.desktop"
update-desktop-database "$HOME/.local/share/applications" >/dev/null 2>&1 || true
echo "Vision is installed."
echo "Find 'Vision' in your app launcher, or run: vision-web"
echo "It opens vision.page.gd in its own window. When a newer build of"
echo "Vision ships, a small Update button appears at the top right of"
echo "the app — tap it and you're on the latest version."
