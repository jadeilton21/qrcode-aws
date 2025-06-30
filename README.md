QRCode-AWS
Projeto desenvolvido em Java com Spring Boot para geração e gerenciamento de QR Codes integrados com serviços da AWS.

Descrição
O QRCode-AWS é uma aplicação backend que gera QR Codes dinamicamente e armazena as imagens geradas no Amazon S3. Além disso, salva metadados relacionados no Amazon DynamoDB para consulta rápida e organizada. O projeto também pode acionar funções do AWS Lambda para processamento assíncrono, como envio de notificações ou análises.

Tecnologias utilizadas
Java 17+

Spring Boot

AWS SDK para Java

Amazon S3 (armazenamento de imagens)

Amazon DynamoDB (banco NoSQL para metadados)

AWS Lambda (processamento serverless opcional)

Maven / Gradle (gerenciamento de dependências)

Funcionalidades
Geração de QR Codes personalizados via API REST.

Upload seguro das imagens geradas para Amazon S3.

Registro e consulta de metadados dos QR Codes no DynamoDB.

Integração opcional com AWS Lambda para tarefas assíncronas.

Estrutura modular e fácil de estender.

Como executar
Configure suas credenciais AWS no ambiente (via perfil AWS CLI ou variáveis de ambiente).

Build e execute o projeto com Maven ou Gradle.

Acesse a API para gerar QR Codes e obter os links das imagens hospedadas no S3.

