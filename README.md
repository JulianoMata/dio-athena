# dio-athena
Repositório sobre o Amazon Athena

### {c : green}Serviços utilizados nessa atividade prática{/c}
 - [Amazon S3](https://aws.amazon.com/pt/pm/serv-s3/?trk=c7f743d7-9b85-4db0-b6f1-d2387daa5845&sc_channel=ps&s_kwcid=AL!4422!3!626321541797!e!!g!!amazon%20s3&ef_id=EAIaIQobChMImqGGp5mG-wIVA8aRCh2ANgJuEAAYASAAEgID8vD_BwE:G:s&s_kwcid=AL!4422!3!626321541797!e!!g!!amazon%20s3)
 - [Amazon Glue](https://aws.amazon.com/pt/glue/?whats-new-cards.sort-by=item.additionalFields.postDateTime&whats-new-cards.sort-order=desc)
 - [Amazon Athena](https://aws.amazon.com/pt/athena/?whats-new-cards.sort-by=item.additionalFields.postDateTime&whats-new-cards.sort-order=desc)
 - [Amazon QuickSight](https://aws.amazon.com/pt/quicksight/)

### {c : green}Etapas para desenvolvimento{/c}

### {c : green}Criar bucket no Amazon S3{/c}

- Amazon S3 Console -> Buckets -> Create bucket -> Bucket name [nome_do bucket] - Create bucket
- Create folder (Criar uma pasta chamada ```/output``` e outra com o nome do seu conjunto de dados. Este nome irá definir o nome da tabela criada no Glue)
- Upload dos arquivos de dados localizados na pasta ```/data```

#### {c : green}Criar Glue Crawler{/c}

- Amazon Glue Console -> Crawlers -> Add Crawler
- Source type [Data Stores] -> Crawl all folders
- Data store [S3] -> Include path [caminho do diretório dos dados de entrada]
- Create IAM Role
- Frequency [Run on demand]
- Database name [seu_nome_de_db]
- Group behavior [Create a single schema for each S3 path]
- Finish
- Databases -> Tables -> Visualizar dados das tabelas criadas

### {c : green}Criar aplicação no Amazon Athena{/c}

- Query editor -> Settings -> Manage settings -> Query result location and encryption -> Browse S3 -> selecionar o bucket criado
- Selecionar Database -> criar queries (exemplos na pasta ```/src```)
- Verificar queries não salvas no bucket criado no S3
- Salavar queries -> Executar novamente -> Verificar no bucket criado no S3

#### {c : green}Criando nova tabela{/c}

- Generate table DDL
- Copiar a query gerada
- Selecionar o DB e criar a nova tabela em uma nova query

### {c : green}Visualizar dados no Amazon QuickSight{/c}

- Signup (caso não tenha conta) -> Escolher [Standard]
- Datasets -> Create new dataset -> Athena -> Name [NomeDoDataSet] -> Create
- Select database -> select table -> Edit or preview -> Save & visualize
- Criar visualizações selecionando colunas, criando filtros e parâmetros e selecionando Visual types para gráficos.

### {c : green}Eliminar recursos{/c}
 - Exluir os elementos criados



[DIO - Unimed/BH](https://web.dio.me/track/geracao-tech-unimed-bh-ciencia-de-dados "Bootcamp - DIO")

![](https://uploaddeimagens.com.br/images/004/083/028/original/imagem_dio.jpg)

![](https://uploaddeimagens.com.br/images/004/083/032/original/dio.png)



