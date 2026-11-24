# Vision — the Linux app for vision.page.gd

A tiny app file that opens [vision.page.gd](https://vision.page.gd/) the way
OpenCode opens: in its own window, no tabs, no address bar — just Vision.

## Install (Linux / ChromeOS Linux container)

```bash
git clone https://github.com/jaswanth07140/vision-app
cd vision-app
bash install.sh
```

That puts a **Vision** entry in your app launcher (with the Vision ring icon) and a `vision-web`
command in `~/.local/bin`. Total size: a few kilobytes. It uses the
Chromium-family browser already on the machine (Chrome, Chromium, Brave,
Edge), with its own small profile folder so the app window stays separate
from your normal browsing.

## Updates

The app *is* the live site, so it never goes stale. Whenever a newer build
of Vision is deployed, a small **Update** button appears at the top right
of the app — tap it and the app reloads onto the latest version. No
reinstall, no download.

The launcher itself almost never changes. If it ever does, update it with:

```bash
cd vision-app && git pull && bash install.sh
```

## What's in here

- `vision-web` — the launcher script (opens the site in app mode)
- `Vision.desktop` — the app-launcher entry (named just "Vision")
- `vision-web.png` — the Vision ring icon
- `install.sh` — puts the three files in the right places
