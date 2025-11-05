# 🧪 pkpd-simulator  
**Simulate & Visualize Drug Concentration-Time Profiles for Pharmacokinetic (PK) Analysis**

> Ferramenta em R para simulação e visualização interativa de perfis farmacocinéticos — ideal para farmacêuticas, biofarmacêuticas, CROs e pesquisadores em farmacologia quantitativa.

![R](https://img.shields.io/badge/R-4.4+-276DC3?logo=r)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 💡 O que é?

Um motor de simulação PK em **R** que permite:

- ✅ Modelar concentração plasmática ao longo do tempo (ex: 1-compartment, oral/IV)
- ✅ Visualizar perfis com `ggplot2`
- ✅ Gerar relatórios automáticos via `rmarkdown`
- ✅ (Opcional) Explorar cenários interativamente com `shiny`

Totalmente **reprodutível, baseado em código aberto e alinhado às boas práticas de modelagem farmacocinética**.

---

## 📦 Tecnologias

- **R** (`deSolve`, `ggplot2`, `tidyverse`)
- **Relatórios**: `rmarkdown`, `gt`
- **Interatividade**: `shiny` (em desenvolvimento)
- **Dados**: CSV com parâmetros PK (dose, V, CL, ka)

---

## 📊 Exemplo de Saída

### Tabela de Demografia
![Tabela de Demografia](screenshots/demographics_table.png)

### Gráfico de Eventos Adversos
![Gráfico de Eventos Adversos](screenshots/adverse_events_plot.png)

### Análise de Gravidade dos Eventos
![Análise de Gravidade](screenshots/severity_table.png)

### Resultado do Teste Estatístico
![Teste de Fisher](screenshots/fisher_test_result.png)

---

## 🖥️ Aplicativo Interativo (Shiny)

Explore os dados clínicos de forma interativa com nosso aplicativo Shiny.

![App Shiny](screenshots/shiny_app_screenshot.png)

> 🔍 *Clique na imagem acima para ver o demo completo (se disponível).*
## ▶️ Como Executar

---

```r
# 1. Clone o repositório
# 2. Instale dependências
install.packages(c("deSolve", "ggplot2", "tidyverse", "rmarkdown", "gt"))

# 3. Gere o relatório
rmarkdown::render("analysis.Rmd", output_format = "html_document")
