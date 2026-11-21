#!/bin/bash
# Los paquetes para subir a mano (21/11/2026): el de ChatGPT (plataforma de OpenAI › Plugins) y el de Microsoft 365 Copilot
# (Partner Center › Agent Store). Sin secretos: solo direcciones públicas, textos e iconos.
set -e
cd "$(dirname "$0")"
rm -f paquetes/mayrit-chatgpt.zip paquetes/mayrit-copilot.zip
zip -q -X -r paquetes/mayrit-chatgpt.zip plugin.json mcp.json skills assets
(cd copilot && zip -q -X ../paquetes/mayrit-copilot.zip manifest.json declarativeAgent.json ai-plugin.json color.png outline.png)
unzip -l paquetes/mayrit-chatgpt.zip; unzip -l paquetes/mayrit-copilot.zip
