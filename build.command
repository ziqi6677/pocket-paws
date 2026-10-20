#!/bin/sh
set -eu
cd "$(dirname "$0")"
APP="PocketPaws.app/Contents"
mkdir -p "$APP/MacOS" "$APP/Resources"
cp index.html "$APP/Resources/pet.html"
cp main.js "$APP/Resources/main.js"
cat > "$APP/MacOS/PocketPaws" <<'LAUNCHER'
#!/bin/sh
PAWS_RES="$(CDPATH= cd -- "$(dirname -- "$0")/../Resources" && pwd)"
exec /usr/bin/osascript -l JavaScript "$PAWS_RES/main.js" "$PAWS_RES/pet.html"
LAUNCHER
chmod +x "$APP/MacOS/PocketPaws"
cat > "$APP/Info.plist" <<'PLIST'
<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"><plist version="1.0"><dict><key>CFBundleExecutable</key><string>PocketPaws</string><key>CFBundleIdentifier</key><string>local.pocketpaws.desktop</string><key>CFBundleName</key><string>口袋爪爪</string><key>CFBundlePackageType</key><string>APPL</string><key>CFBundleVersion</key><string>1.0</string><key>LSUIElement</key><true/><key>NSHighResolutionCapable</key><true/></dict></plist>
PLIST
printf 'Built PocketPaws.app\n'
