# 📊 Modelagem de Dados com SQL e dbt

Projeto de engenharia de dados focado na construção de um **Data Warehouse** utilizando **SQL, PostgreSQL e dbt**, aplicando conceitos de modelagem dimensional e boas práticas de transformação de dados.

---

## 🚀 Objetivo

Transformar dados brutos provenientes de arquivos (CSV/Excel) em um modelo estruturado e confiável, pronto para análises e dashboards.

---

## 🧱 Arquitetura do Projeto

O fluxo de dados segue a arquitetura clássica de Data Warehouse:

```
Arquivos (CSV/Excel)
        ↓
     Python (Ingestão)
        ↓
   PostgreSQL (RAW)
        ↓
     dbt (Transformações)
        ↓
  staging → Dimensional → OLAP
```

---

## 🛠️ Tecnologias Utilizadas

* 🐍 Python (ingestão de dados)
* 🐘 PostgreSQL (armazenamento)
* 🔄 dbt (transformação e modelagem)
* 💾 SQL (consultas e regras de negócio)

---

## 📂 Estrutura do Projeto

```
models/
│
├── staging/        # Tratamento e padronização dos dados brutos
├── intermediate/   # Regras de negócio intermediárias
├── marts/          # Tabelas finais para análise
│   ├── fact/       # Tabelas fato
│   └── dimension/  # Tabelas dimensão
```

---

## 🔄 Etapas do Processo

### 1. Ingestão de Dados

* Dados provenientes de arquivos CSV/Excel
* Processamento inicial com Python
* Carga no banco PostgreSQL (camada RAW)

---

### 2. Staging (dbt)

* Padronização de nomes
* Tratamento de tipos de dados
* Limpeza e organização inicial

---

### 3. Modelagem Dimensional

* Criação de tabelas **fato** e **dimensão**
* Relacionamentos otimizados para análise
* Estrutura voltada para BI

---

### 4. Camada Analítica (OLAP)

* Dados prontos para dashboards
* Otimização para consultas analíticas
* Base para ferramentas como Power BI

---

## 📈 Exemplos de Modelagem

* Fato: `fato_pedidos`
* Dimensões:

  * `dim_clientes`
  * `dim_produtos`
  * `dim_vendedor`
  * `dim_data`

---

## ✅ Boas Práticas Aplicadas

* Versionamento com Git
* Organização em camadas (staging → marts)
* Uso de `ref()` no dbt para dependências
* Separação entre dados brutos e tratados
* Estrutura escalável para crescimento do projeto

---

## ▶️ Como executar o projeto

```bash
# Instalar dependências
pip install dbt-postgres

# Rodar transformações
dbt run

# Rodar testes
dbt test

# Gerar documentação
dbt docs generate
dbt docs serve
```

---

## 📊 Documentação

Após rodar:

```bash
dbt docs serve
```

Acesse no navegador:

```
http://localhost:8080
```

---

## 💡 Possíveis melhorias futuras

* Adição de testes de qualidade mais robustos
* Integração com ferramentas de BI
* Orquestração com Airflow
* Pipeline automatizado (CI/CD)

---

## 👨‍💻 Autor

Projeto desenvolvido como prática de Engenharia de Dados, com foco em modelagem e transformação utilizando dbt.
