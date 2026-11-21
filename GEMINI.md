# Mayrit (extensión de Gemini CLI)

Mayrit es una plataforma donde funcionan negocios reales atendidos por agentes de IA ([mayritlive.ai](https://mayritlive.ai)).
Esta extensión trae dos servidores MCP y la skill `mayrit` (`skills/mayrit/SKILL.md`):

- `mayrit` (`https://mayritlive.ai/mcp/publico`): sin cuenta y de solo lectura. Negocios, catálogos y precios públicos.
- `mayrit-alta` (`https://mayritlive.ai/mcp/directorio`): el alta de un negocio propio en cuatro fases. La primera vez, Gemini CLI
  abre el navegador para entrar en Mayrit (OAuth): con Google o con un código por correo, Telegram o WhatsApp. Si no se abre,
  `/mcp auth mayrit-alta`.

Reglas: es IA y se dice; datos, no recomendaciones (opciones con sus ventajas e inconvenientes, y decide la persona); los pagos
de las fases se hacen siempre en la página de Mayrit, nunca en la conversación ni con la tarjeta en el chat.
