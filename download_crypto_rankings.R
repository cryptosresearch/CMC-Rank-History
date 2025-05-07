

library(crypto2) # Download Crypto Currency Data from 'CoinMarketCap' without 'API'

# Cria a pasta, se não existir
dir.create("DB/CMK", recursive = TRUE, showWarnings = FALSE)

active_list <- crypto_listings()
active_list <- active_list[active_list$is_active==1]
active_list <-active_list[order(active_list$cmc_rank),]

names(active_list)
nrow(active_list)
if(nrow(active_list)> 1000) {
  # Salva como .rds com a data no nome
  nome_arquivo <- paste0("DB/CMK/rankings_", format(Sys.Date(), "%Y-%m-%d"), ".rds")
  saveRDS(active_list, nome_arquivo)
  cat("Ranking salvo em:", nome_arquivo, "\n")
} else {
  # avisar telegram erro
}

