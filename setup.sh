#!/bin/bash

# RunPod MCP Server Setup Script
# Este script automatiza a instalação do MCP Server da RunPod

set -e

echo "====================================="
echo "RunPod MCP Server Setup"
echo "====================================="
echo ""

# Verifica se Node.js está instalado
echo "[1/5] Verificando Node.js..."
if ! command -v node &> /dev/null; then
    echo "Node.js não está instalado. Visite: https://nodejs.org/"
    exit 1
fi
echo "Node.js versão: $(node --version)"
echo ""

# Define a chave API
echo "[2/5] Configurando chave API..."
export RUNPOD_API_KEY="rpa_BHOQ9L0RU28OBBWPAEBCPGRW17QRKPWTSQ9X9VQZkvezwr"
echo "Chave API configurada."
echo ""

# Clone do repositório
echo "[3/5] Clonando repositório RunPod MCP..."
if [ ! -d "runpod-mcp" ]; then
    git clone https://github.com/runpod/runpod-mcp.git
    cd runpod-mcp
else
    cd runpod-mcp
    git pull
fi
echo ""

# Instala dependências
echo "[4/5] Instalando dependências npm..."
npm install
echo ""

# Exibe instruções finais
echo "[5/5] Setup concluía!"
echo ""
echo "====================================="
echo "Próximos Passos:"
echo "====================================="
echo ""
echo "1. Inicie o MCP Server com:"
echo "   export RUNPOD_API_KEY='rpa_BHOQ9L0RU28OBBWPAEBCPGRW17QRKPWTSQ9X9VQZkvezwr'"
echo "   npm start"
echo ""
echo "2. O servidor estará disponível em: http://localhost:8080"
echo ""
echo "3. Configure no Claude Desktop:"
echo "   - Abra Preferências > Developer Settings"
echo "   - Adicione servidor MCP remoto"
echo "   - URL: http://localhost:8080"
echo ""
echo "====================================="
