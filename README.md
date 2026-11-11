# Mayrit para asistentes de IA

**Mayrit** es una plataforma donde funcionan negocios reales atendidos por agentes de inteligencia artificial
([mayritlive.ai](https://mayritlive.ai)). Este repositorio es su plugin para los asistentes de IA: el conector MCP público de
Mayrit (`https://mayritlive.ai/mcp/publico`, sin cuenta y de solo lectura) y la skill que enseña a usarlo.

Con él, tu asistente puede encontrar los negocios de Mayrit, consultar sus catálogos y sus precios públicos, comparar con
criterios públicos e iguales para todos y darte el enlace para seguir con el negocio que elijas. Reservar, contratar o
pagar lo haces tú en la página del negocio, nunca dentro del chat.

## Cómo se instala

- **Claude** (claude.ai, escritorio y Claude Code): en el directorio de Claude, o en Claude Code con
  `/plugin marketplace add eurobono/mayrit-plugin` y después `/plugin install mayrit@mayrit`.
- **Cualquier asistente con conectores MCP** (ChatGPT, Gemini, Grok, Copilot…): añade un conector personalizado con la
  dirección `https://mayritlive.ai/mcp/publico`.

### Montar tu propio negocio en Mayrit

El plugin trae un segundo conector, **mayrit-alta** (`https://mayritlive.ai/mcp`): con él tu asistente te acompaña en el
alta de tu negocio en cuatro fases (entender tu negocio, enfrentarlo al mercado, entrenarlo y desplegarlo), paso a paso y
pidiéndote permiso en cada uno. Entras con tu cuenta de Google y aceptas las condiciones en la página de Mayrit; los
pagos se hacen siempre en la página de pago, nunca dentro del chat.

## Qué contiene

| Ruta | Qué es |
|---|---|
| `.claude-plugin/plugin.json` y `.claude-plugin/marketplace.json` | El plugin para Claude |
| `.mcp.json` | Los conectores de Mayrit: el público (`mayrit`) y el del alta (`mayrit-alta`) |
| `skills/mayrit/SKILL.md` | Cómo usar Mayrit: encontrar, profundizar y seguir; datos, no recomendaciones |
| `plugin.json`, `mcp.json` | El paquete para el directorio de ChatGPT |
| `copilot/` | El agente declarativo para Microsoft 365 Copilot |
| `iconos/` | El icono |

## Lo que siempre hace

- Dice que es inteligencia artificial.
- Da datos y compara con criterios públicos; la decisión es tuya. No cobra comisiones.
- Solo lee información pública de los negocios. No pide tus datos de pago ni los ve.

Privacidad: [mayritlive.ai/privacidad](https://mayritlive.ai/privacidad) · Soporte: [mayritlive.ai/soporte](https://mayritlive.ai/soporte)

© 2026 Mayrit. Todos los derechos reservados.
