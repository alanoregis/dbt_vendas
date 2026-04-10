# 📊 Modelagem de Dados com SQL e dbt

Projeto de engenharia de dados focado na construção de um **Data Warehouse** utilizando **SQL, PostgreSQL e dbt**, aplicando conceitos de modelagem dimensional e boas práticas de transformação de dados.

---

## 🚀 Objetivo

Transformar dados brutos provenientes de arquivos (CSV/Excel) em um modelo estruturado e confiável, pronto para análises e dashboards.

---

## 🧱 Arquitetura do Projeto

O fluxo de dados segue a arquitetura clássica de Data Warehouse:

```
CSV/Excel
    ↓
Python (Ingestão)
    ↓
PostgreSQL (Camada RAW)
    ↓
dbt (Transformações)
    ↓
┌─────────────────────────────────────┐
│  models/raw/     → Fontes brutas    │
│  models/staging/ → Limpeza e tipos  │
│  models/olap/    → Dimensões + Fato │
└─────────────────────────────────────┘
    ↓
Data Mart (OLAP)
    ↓
Power BI / Dashboards
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
├── raw/          → Fontes brutas (muitas vezes via source)
├── staging/      → Limpeza, renomeação, tipos básicos
└── olap/         → Dimensões e fatos prontos para análise
```

---

## 🔄 Etapas do Processo

### 1.Ingestão de Dados

    Dados provenientes de arquivos CSV/Excel

    Processamento inicial com Python

    Carga no banco PostgreSQL (camada RAW)

2. Raw Layer (dbt) - models/raw/

    Modelos que referenciam diretamente as tabelas carregadas

    Mapeamento via sources.yml

    Primeira camada de abstração no dbt

3. Staging Layer (dbt) - models/staging/

    Padronização de nomes (snake_case, remoção de prefixos)

    Tratamento de tipos de dados (casting)

    Limpeza inicial (COALESCE, TRIM, remoção de nulos)

    Renomeação de colunas para clareza

    Sem joins entre tabelas diferentes (cada stg_* vem de uma única raw_*)

4. Modelagem Dimensional (dbt) - models/olap/

    Criação de tabelas dimensão (dim_clientes, dim_produtos, dim_data, dim_vendedor)

    Criação da tabela fato (fato_pedidos)

    Aplicação de surrogate keys

    Relacionamentos otimizados para análise

5. Camada Analítica / Mart (OLAP)

    Dados prontos para dashboards

    Otimização para consultas analíticas (uso de GROUP BY, agregados, joins controlados)

    Base para ferramentas como Power BI, Tableau ou Metabase

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
