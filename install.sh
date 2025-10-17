#!/usr/bin/env bash
set -e

echo "Instalando dependências..."
pkg install -y curl jq python > /dev/null 2>&1

echo "Instalando termux-ai-chat..."
cp termux-ai-chat $PREFIX/bin/chat
chmod +x $PREFIX/bin/chat

echo "Instalado com sucesso!"
echo "Use: chat [--help] para ver as opções"