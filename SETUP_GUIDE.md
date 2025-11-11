# RunPod MCP Server Setup Guide

## Objetivo
Configurar o MCP Server (Model Context Protocol) da RunPod para conexão com Claude Desktop via API.

## Informações de Configuração

**Sua API RunPod:** `rpa_BHOQ9L0RU28OBBWPAEBCPGRW17QRKPWTSQ9X9VQZkvezwr`

## Passo 1: Instalar Node.js

1. Visite [https://nodejs.org/](https://nodejs.org/)
2. Download a versão LTS (Long Term Support)
3. Instale normalmente
4. Verifique a instalação:
```bash
node --version
npm --version
```

## Passo 2: Clonar e Configurar MCP Server

### Clone o repositório oficial:
```bash
git clone https://github.com/runpod/runpod-mcp.git
cd runpod-mcp
npm install
```

### Configure sua chave API como variável de ambiente

**Mac/Linux:**
```bash
export RUNPOD_API_KEY="rpa_BHOQ9L0RU28OBBWPAEBCPGRW17QRKPWTSQ9X9VQZkvezwr"
```

**Windows (Prompt):**
```cmd
set RUNPOD_API_KEY=rpa_BHOQ9L0RU28OBBWPAEBCPGRW17QRKPWTSQ9X9VQZkvezwr
```

**Windows (PowerShell):**
```powershell
$env:RUNPOD_API_KEY="rpa_BHOQ9L0RU28OBBWPAEBCPGRW17QRKPWTSQ9X9VQZkvezwr"
```

## Passo 3: Iniciar o MCP Server

```bash
npm start
```

Você deverá ver uma mensagem similar a:
```
MCP Server running on http://localhost:8080
```

## Passo 4: Configurar Conexão com Claude Desktop

1. Abra as **Preferências do Claude Desktop**
2. Vá para a seção de "Developer Settings" ou "Configurações"  
3. Clique em "Adicionar Servidor MCP"
4. Preencha os seguintes dados:
   - **Nome:** RunPod MCP
   - **URL do servidor MCP remoto:** `http://localhost:8080`
5. Clique em "Salvar"

## Passo 5: Testar a Conexão

No Claude, você poderá fazer comandos como:

- "Listar meus pods da RunPod"
- "Criar um novo pod"
- "Verificar status dos meus pods"
- "Gerenciar endpoints"

## Troubleshooting

### Porta já em uso
Se a porta 8080 já está em uso, você pode iniciar em outra porta:
```bash
PORT=8081 npm start
```
E ajuste a URL no Claude para: `http://localhost:8081`

### Chave API inválida
Certifique-se de que a chave está corretamente exportada:
```bash
echo $RUNPOD_API_KEY
```

### Permissões negadas (Mac/Linux)
Se tiver erro de permissão no npm:
```bash
sudo chown -R $(whoami) ~/.npm
```

## Próximas Etapas

Após configurar com sucesso, você pode:
1. Gerenciar pods via Claude conversando em linguagem natural
2. Automatizar tarefas de RunPod via IA
3. Criar workflows personalizados com Claude

## Referências

- [RunPod API Docs](https://docs.runpod.io)
- [MCP Protocol Documentation](https://modelcontextprotocol.io)
- [GitHub: runpod/runpod-mcp](https://github.com/runpod/runpod-mcp)
