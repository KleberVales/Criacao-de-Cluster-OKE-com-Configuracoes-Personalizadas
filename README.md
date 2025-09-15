# Criacao-de-Cluster-OKE-com-Configuracoes-Personalizadas

Este projeto demonstra como criar um cluster Kubernetes no Oracle Cloud Infrastructure (OCI) usando o fluxo Custom Create com Managed Nodes. A abordagem permite controle total sobre versão do Kubernetes, rede, segurança, criptografia e políticas de imagem.

## 🚀 Objetivo

Criar um cluster OKE com configurações explícitas, utilizando:

- Versão personalizada do Kubernetes
- Rede VCN/Subnet existente
- Criptografia de segredos com OCI Vault
- Políticas de verificação de imagem
- Grupo de nós gerenciados (Managed Node Pool)

## 🧱 Pré-requisitos

- Conta na Oracle Cloud com permissões para criar recursos
- VCN e Subnets previamente configuradas
- Vault e Key configurados para criptografia
- Docker e OCI CLI instalados localmente
- Compartimento definido para os recursos

## ⚙️ Etapas de Criação

### 1. Acesse o Console OCI
- Navegue até Developer Services > Kubernetes Clusters (OKE)

### 2. Inicie o fluxo Custom Create

