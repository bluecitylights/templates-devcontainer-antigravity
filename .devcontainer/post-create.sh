#!/bin/bash

echo "🚀 Devcontainer is opgestart. Antigravity CLI controleren..."

# Controleer of we ingelogd zijn, zo niet, geef een melding
if agy init --check; then
    echo "✅ Antigravity is klaar voor gebruik!"
else
    echo "⚠️ Je bent nog niet ingelogd in agy. Typ straks 'agy auth login' in je terminal!"
fi