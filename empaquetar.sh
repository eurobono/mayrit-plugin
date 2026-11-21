#!/bin/bash
# Los paquetes para subir a mano (21/11/2026): el de ChatGPT (plataforma de OpenAI › Plugins) y el de Microsoft 365 Copilot
# (Partner Center › Agent Store). Sin secretos: solo direcciones públicas, textos e iconos.
set -e
cd "$(dirname "$0")"
rm -f paquetes/mayrit-chatgpt.zip paquetes/mayrit-copilot.zip
# 21/11/2026 (decisión chatgpt-y-gemini): el de ChatGPT lleva su propia skill (chatgpt/skills: sin precios ni enlaces de pago,
# norma 5.1 de OpenAI) y su servidor es https://mayritlive.ai/mcp/chatgpt (mcp.json).
T=$(mktemp -d); cp plugin.json mcp.json "$T"/; cp -r chatgpt/skills assets "$T"/
(cd "$T" && zip -q -X -r - plugin.json mcp.json skills assets) > paquetes/mayrit-chatgpt.zip; rm -rf "$T"
(cd copilot && zip -q -X ../paquetes/mayrit-copilot.zip manifest.json declarativeAgent.json ai-plugin.json color.png outline.png)
unzip -l paquetes/mayrit-chatgpt.zip; unzip -l paquetes/mayrit-copilot.zip
