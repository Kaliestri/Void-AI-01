import os
import logging
from telegram.ext import Application, CommandHandler, MessageHandler, filters

# Configuración básica
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger("VOID")

print("🚀 INICIANDO VOID")

async def start(update, context):
    await update.message.reply_text(
        "🌀 **VOID ACTIVO**\n\n"
        "Sistema evolutivo funcionando.\n"
        "¡Háblame libremente!"
    )

async def handle_message(update, context):
    user_text = update.message.text
    response = f"💭 Mensaje recibido: '{user_text}'\n\nSistema operativo ✅"
    await update.message.reply_text(response)

async def main():
    token = os.environ.get('BOT_TOKEN')
    if not token:
        logger.error("❌ BOT_TOKEN no configurado")
        return
    
    app = Application.builder().token(token).build()
    app.add_handler(CommandHandler("start", start))
    app.add_handler(MessageHandler(filters.TEXT & ~filters.COMMAND, handle_message))
    
    logger.info("✅ VOID operativo")
    await app.run_polling()

if __name__ == "__main__":
    import asyncio
    asyncio.run(main())
