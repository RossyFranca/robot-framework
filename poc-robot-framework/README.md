# Desafio-Prime-control

Teste:

Ferramenta: Robot Framework + Selenium
- Utilizar o site: http://automationpractice.com/index.php;

- Escolher um fluxo para automatizar;

- Siga o padrão Page Object Model;

- Escrever 2 casos de testes para esse fluxo onde um teste de sucesso e outro falha por bug (apenas faça um assert dar errado); 

- Subir o projeto em um repositório Git e compartilhar o link;

- Escrever documentação das keywords [Documentation];

- Escrever README.md de como rodar e das libraries utilizadas002E

Referência: https://robotframework.org

# Instalação de dependências

### Bibliotecas utilizadas
- SeleniumLibrary
- FakerLibrary

Com o python já devidamente instalado, na raiz do projeto rodar o seguinte comando:
 > $ pip install -r requirements.txt

Serão instaladas as bibliotecas do robotframework e robotframework-selenium

# Keywords utilizadas

- *Open Browser*
Abrir o browser em determinada url
- *Close Browser*
Fechar o navegador
- *Input text*
Inserir um texto em um componente de inputText
- *Wait Until Page Contains Element*
Fazer o robô aguardar até que um determinado elemento esteja na tela
- *Click element*
Clicar em um elemento
- *Title Should Be*
Valida o título de uma página que fica exibido na aba do navegador
- *Page Should Not Contain Textfield*
Valida que um determinado texto não aparece na tela
- *Sleep*
Faz com que o robô fique aguardando por um determinado tempo que é informado como parâmetro da keyword
- *Element Attribute Value Should Be*
Testa o valor de um determinado atributo de um elemento
- *Set Suite Variable*
Insere um valor dentro de uma variável a ser utilizada por toda a suíte de testes em questão
- *Maximize Browser Window*
Maximiza o navegador
- *Mouse Over*
Simula colocar o ponteiro do mouse sobre um elemento
- *Convert To String*
Converter um valor para o tipo String
- *Select From List By Index*
Seleciona um item de uma lista pelo index
- *FakerLibrary.Random Int*
Gera um número aleatório
- *FakerLibrary.password*
Gera um password aleatório


# Execução dos testes

Para executar todos os testes:
> robot -d results  ./src/tests/

Para rodar uma Suite específica:
> robot -d results  ./src/tests/Pesquisa.bdd.robot

Para rodar um cenário específico
> robot -d results -t "Cenário 02: Efetuar uma compra" ./src/tests

