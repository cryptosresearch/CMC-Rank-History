# ⛓️ CoinMarketCap Rankings - GitHub Action

Este repositório automatiza a coleta diária de rankings de criptomoedas diretamente do CoinMarketCap usando o pacote R `crypto2` — **sem necessidade de API**.

## 📦 Funcionalidades

- Usa `crypto2` para acessar os dados do CoinMarketCap
- Salva os dados em formato `.rds` na pasta `DB/CMK`
- Agendado para rodar todos os dias às 12h UTC via GitHub Actions

## 🚀 Como usar

1. Clone este repositório
2. Certifique-se que o script `R/download_crypto_rankings.R` está correto
3. Edite o workflow se desejar alterar a frequência
4. Faça commit e push no GitHub — o Action cuidará do resto

## 🗂️ Saída

Os arquivos gerados serão salvos na pasta `DB/CMK` com o nome:

```
rankings_YYYY-MM-DD.rds
```

## 🔧 Dependência

- R
- Pacote R: `crypto2`
