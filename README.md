# TRABALHO 01:  PassWars
Trabalho desenvolvido durante a disciplina de Banco de Dados do Integrado

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Éllen Oliveira Silva Neves: ellenosneves@gmail.com<br>
Sidenir Antônio Junior: sidenirjunior27@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
O programa PassWars tem como objetivo auxiliar na organização das pessoas ao guardar suas senhas de diversos sites em um local seguro e organizado. Sabendo da dificuldade que muitas pessoas enfrentam em deixar suas senhas em um único local, de acesso não público e de forma organizada, o programa guarda todas elas por categorias, cada uma sendo um site cadastrado pelo usuário, e por cadastro: cada conta armazenada pelo PassWars tem seu próprio campo de senha e foto de perfil; tudo isso organizado por ordem alfabética de modo a tornar mais fácil localizar.
 

### 3.MINI-MUNDO Novo<br>

O sistema do programa PassWars, para melhor funcionamento, necessita que alguns dados sejam informados pelo usuário. Entre esses dados estão: nome, sobrenome, idade, endereço eletrônico, senha, pergunta de segurança e resposta da mesma, sites cadastrados, usuários e senhas cadastrados em cada um. 


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
https://drive.google.com/open?id=1By3LfPDqnHyxvmhOzUxZZhj6BGqFh0r4<br>

#### 4.1 TABELA DE DADOS DO SISTEMA:
https://drive.google.com/open?id=19ryJMsJPbMiGebQC3jXmsksLMuAwAlqC
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes?
O sistema fornece ao usuário uma relação com os sites cadastrados, no qual será organizado os nomes de usuários, senhas e fotos de perfil. Além disso, será fornecido ao usuário uma alternativa de nova senha, onde será utilizada uma seleção aleatória de caracteres aleatórios de todas as senhas já cadastradas anteriormente.
Já ao desenvolvedor, é feito uma lista com todos os dados cadastrados, de cada usuário, sendo assim: nome de usuário utilizado para acesso ao PassWars, senha, nome, sobrenome, nome social, telefone, data de nascimento, pergunta de segurança e resposta da mesma.
   

### 5.MODELO CONCEITUAL<br>
    https://drive.google.com/open?id=1nAnY86TPsI_Hoy3LzzM2k58zVlLTqpzk
        
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]
    
#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    NomUser: atributo único, pois para cada usuário será armazenado um nome diferente.<br>
    NomSobreUser: atributo único, pois para cada usuário será armazenado um sobrenome diferente.<br>
    NomSocialUser: atributo único, pois para cada usuário será armazenado um nome social diferente (caso o tenha).<br>
    DatNascUser: atributo único, pois para cada usuário será armazenado uma data diferente.<br>
    DscLoginUser: atributo único, pois para cada usuário será armazenado um login diferente.<br>
    DscEmailUser: atributo único, pois para cada usuário será armazenado um endereço de email diferente.<br>
    NumTelUser: atributo único, pois para cada usuário será armazenado um número de telefone diferente (caso tenha).<br>
    
    NomSoft: atributo que armazena o nome do software cadastrado.<br>
    NomSoftUsuário: atributo único, pois para cada software será armazenado um nome de usuário diferente.<br>
    DscSoftSenha: catributo único, pois para cada software será armazenado uma senha diferente.<br>
    
    DscPergSeg: atributo que armazena a descrição da pergunta de segurança.<br>
    
    DscRespPergSeg: atributo único, pois para cada usuário será armazenado uma resposta diferente.<br>

#### 5.3 DESCRIÇÃO DOS DADOS 
    UTILIZADOR: tabela que armazena informações do utilizador do sistema.<br>
    NomUser: campo que armazena o nome do utilizador.<br>
    NomSobreUser: campo que armazena o sobrenome do utilizador.<br>
    NomSocialUser: campo que armazena o nome social do utilizador (caso o tenha).<br>
    DatNascUser: campo que armazena a data de nascimento do utilizador.<br>
    DscLoginUser: campo que armazena o nome de usuário do utilizador para o sistema.<br>
    DscEmailUser: campo que armazena o endereço de email do utilizador.<br>
    NumTelUser: campo que armazena o número de telefone do utilizador (caso tenha).<br>
    
    SOFTWARE: tabela que armazena as informações do software cadastrado pelo usuário.<br>
    NomSoft: campo que armazena o nome do software cadastrado.<br>
    NomSoftUsuário: campo que armazena o nome de usuário do software cadastrado.<br>
    DscSoftSenha: campo que armazena a senha do software cadastrado.<br>
    
    PERGUNTASEG: tabela que armazena as informações das perguntas de segurança existentes no sistema.<br>
    DscPergSeg: campo que armazena a descrição da pergunta de segurança.<br>
    
    RESPPERGSEG: tabela que armazena as respostas dos utilizadores para as perguntas de segurança.<br>
    DscRespPergSeg: campo que armazena a resposta para a pergunta de segurança.<br>

### 6	MODELO LÓGICO<br>
       https://drive.google.com/open?id=11gjMlTB6UGasFUo0OB50VPYJ6quajgJX

### 7	MODELO FÍSICO<br>
        https://drive.google.com/open?id=1ebTvNdbjerIDUH38FR3MMCJngkG2nBjS     
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        https://drive.google.com/open?id=152NPaQnEEwsp7aYIoSZsX1cP3OsbeqQH

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
        
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.


    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>


#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
        

## Marco de Entrega 02 em: (16/06/2018)<br>
### ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO SEMESTRAL (Mínimo 6 e Máximo 10)<br>
<br>
    Data de Entrega: (30/06/2018)
<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>

#### 9.11	LISTA DE CODIGOS DAS FUNÇÕES E TRIGGERS<br>
        Detalhamento sobre funcionalidade de cada código.
        a) Objetivo
        b) Código do objeto (função/trigger)
        c) exemplo de dados para aplicação
        d) resultados em forma de tabela/imagem
<br>


#### 9.12	GERACAO DE DADOS (MÍNIMO DE 100 MIL REGISTROS PARA PRINCIPAL RELAÇAO)<br>
        a) principal tabela do sistema deve ter no mínimo 100 mil registros
        b) tabelas diretamente relacionadas a tabela principal 10 mil registros
        c) tabelas auxiliares de relacao multivalorada mínimo de 10 registros
        d) registrar o tempo de inserção em cada uma das tabelas do banco de dados
        e) especificar a quantidade de registros inseridos em cada tabela
        Para melhor compreensão verifiquem o exemplo na base de testes:<br>
        https://github.com/discipbd2/base-de-testes-locadora
        

#### 9.13	Backup do Banco de Dados<br>
        Detalhamento do backup.
        a) Tempo
        b) Tamanho
        c) Teste de restauração (backup)
        d) Tempo para restauração
        e) Teste de restauração (script sql)
        f) Tempo para restauração (script sql)
<br>

Data de Entrega: (Data a ser definida)
<br>

#### 9.14	APLICAÇAO DE ÍNDICES E TESTES DE PERFORMANCE<br>
    a) Lista de índices, tipos de índices com explicação de porque foram implementados nas consultas 
    b) Performance esperada VS Resultados obtidos
    c) Tabela de resultados comparando velocidades antes e depois da aplicação dos índices (constando velocidade esperada com planejamento, sem indice e com índice Vs velocidade de execucao real com índice e sem índice).
    d) Escolher as consultas mais complexas para serem analisadas (consultas com menos de 2 joins não serão aceitas)
    e) As imagens do Explain devem ser inclusas no trabalho, bem como explicações sobre os resultados obtidos.
    f) Inclusão de tabela mostrando as 10 execuções, excluindo-se o maior e menor tempos para cada consulta e 
    obtendo-se a media dos outros valores como resultado médio final.
<br>
    Data de Entrega: (Data a ser definida)
<br>   

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

    
### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho

### 13	DIFICULDADES ENCONTRADAS PELO GRUPO<br>  

    
>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>

       
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
   
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/

#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


        
        


    





