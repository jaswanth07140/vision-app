#!/bin/bash
# Install Vision Web on Linux (including ChromeOS's Linux container):
# a launcher command, a launcher icon, and an app entry so Vision Web
# shows up in the app grid like any other app.
set -e
cd "$(dirname "$0")"
mkdir -p "$HOME/.local/bin" "$HOME/.local/share/applications" "$HOME/.local/share/icons"
cp vision-web "$HOME/.local/bin/vision-web"
chmod +x "$HOME/.local/bin/vision-web"
cp "Vision Web.desktop" "$HOME/.local/share/applications/"
cp vision-web.png "$HOME/.local/share/icons/vision-web.png"
update-desktop-database "$HOME/.local/share/applications" >/dev/null 2>&1 || true
echo "Vision Web is installed."
echo "Find 'Vision Web' in your app launcher, or run: vision-web"
echo "It opens vision.page.gd in its own window. When a newer build of"
echo "Vision ships, a small Update button appears at the top right of"
echo "the app — tap it and you're on the latest version."
