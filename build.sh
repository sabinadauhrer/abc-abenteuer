#!/bin/sh
# Baut die eigenständige Webseite aus ../abc-abenteuer/index.html
SRC=/Users/sabinadauhrer/abc-abenteuer/index.html
OUT=$(dirname "$0")/index.html
{
cat <<'HEAD'
<!doctype html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta name="apple-mobile-web-app-title" content="ABC">
<meta name="theme-color" content="#E6F1FA">
<link rel="apple-touch-icon" href="icon.png">
<link rel="icon" href="icon.png">
<link rel="manifest" href="manifest.webmanifest">
<style>
:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px);box-sizing:border-box}
*,*::before,*::after{box-sizing:inherit}
body{margin:0;font-size:14px}
img{max-width:100%}
[hidden]{display:none!important}
</style>
HEAD
cat "$SRC"
printf '\n</html>\n'
} > "$OUT"
