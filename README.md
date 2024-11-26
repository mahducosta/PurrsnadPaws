# Purrs-Paws ɞ 𓈒 ۫

## Descrição 
Blog Inforamativo para tutores e apoiar a adoção de animais

## Como Utilizar ɞ 𓈒

1. Clone este repositório em sua máquina.


1. Crie, no Banco de Dados, as tabelas necessárias para o funcionamento deste projeto.
- Siga as instruções no arquivo **/src/database/script-tabelas.sql**


3. Acesse o arquivo **app.js** e parametrize o ambiente.
- Se você estiver utilizando o Ambiente de Produção (remoto), comente a linha 2 e deixe habilitada a linha 1 onde está o valor **var ambiente_processo = 'producao';**
- Se você estiver utilizando o Ambiente de Desenvolvimento (local), comente a linha 1 e deixe habilitada a linha 2 onde está o valor **var ambiente_processo = 'desenvolvimento';**

4. Adicione as credenciais de Banco de Dados no arquivo **.env** ou em **.end.dev**, seguindo as instruções neste.

5. Acesse este repositório no seu terminal (GitBash ou VSCode) e execute os comandos abaixo:

```
npm i
``` 
_O comando acima irá instalar as bibliotecas necessárias para o funcionamento do projeto. As bibliotecas a serem instaladas estão listadas no arquivo **package.json** então é muito importante que este não seja alterado. Será criada uma nova pasta/diretório chamado **node_modules** quando o comando for finalizado, que é onde as bibliotecas estão localizadas. Não altere a pasta/diretório._

```
npm start
``` 

_O comando acima irá iniciar seu projeto e efetuar os comandos de acordo com a sua parametrização feita nos passos anteriores._

6. Para "ver" seu projeto funcionando, acesse em seu navegador o caminho **informado no terminal**.

7. Caso queira parar a execução, tecle **CTRL+C** no terminal em que o projeto está rodando.

## Link Original Da API usada No Projeto ɞ 𓈒

- https://github.com/BandTec/web-data-viz

1. API construiada para objetivos academicos. Utilizada nesse repositório para implementação do projeto de 1º Semestre na Sptech School. 
