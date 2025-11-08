# 🧪 pkpd-simulator  
**Simulate & Visualize Drug Concentration-Time Profiles for Pharmacokinetic (PK) Analysis**

> An R-based tool for simulating and interactively visualizing pharmacokinetic profiles — ideal for pharmaceutical and biopharmaceutical companies, CROs, and quantitative pharmacology researchers.

![R](https://img.shields.io/badge/R-4.4+-276DC3?logo=r)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 💡 What Is It?

A PK simulation engine in R that enables users to:

- ✅ Model plasma concentration over time (e.g., 1-compartment, oral/IV)
- ✅ Visualize profiles with `ggplot2`
- ✅ Automatically generate reports using `rmarkdown`
- ✅ (Optional) Explore scenarios interactively via `shiny`

Fully reproducible, open-source, and aligned with pharmacokinetic modeling best practices.

---

## 📦 Technologies

- **R** (`deSolve`, `ggplot2`, `tidyverse`)
- **Reporting**: `rmarkdown`, `gt`
- **Interactivity**: `shiny`
- **Data Input**: CSV files containing PK parameters (dose, V, CL, ka)

---

## 📊 Example Output

### Plasma Concentration Profile
![Tabela de Demografia](perfil-concentracao-plasmatica-oral.png)

### Plasma Concentration Table
![Gráfico de Eventos Adversos](tabela-concentracao-plasmatica-oral.png)

### Sensitivity Analysis — Impact of Clearance
![Análise de Gravidade](analise-sensibilidade-clearance-oral.png)

---

## 🖥️ Interactive Shiny App

Explore clinical simulation data interactively.

![App Shiny](simuladorPK-app-shiny.png)

> 🔍 *Click the image above to view the full demo (if available).*

## ▶️ How to Run

---

```r
# 1. Clone o repositório
# 2. Instale dependências
install.packages(c("deSolve", "ggplot2", "tidyverse", "rmarkdown", "gt"))

# 3. Gere o relatório
rmarkdown::render("analysis.Rmd", output_format = "html_document")
