# Gerenciando estados com Provider
Este projeto é fruto do curso de 'Flutter: aplicando gerenciamento de estados com Cubit' da plataforma ALURA

## Introdução

### Flutter: aplicando BLoC com Cubit
 
  Curso da escola Mobile que fala sobre o gerenciador de estados BLoC com Cubit para Flutter. Os temas abordados são: Padrão de projetos BLoC, BlocBuilder e BlocProvider. 

### Tópicos abordados no curso:

- Conceitos de gerenciamento de estados
- Introdução ao BLoC com Cubit
- Arquivos de estado
- Arquivos Cubit
- Configuração de um projeto no padrão BLoC
- Injeção de dependência com BLoC

### O projeto

Tratasse de um aplicativo de compra de ingressos online que precisou ter algumas implementações como carregar as informações de uma API e mostrá-las em nossa home page. Na sequencia, teremos a opção de filtrar a lista de filmes baseado no gênero do filme que queremos assistir, como suspense, ação, comédia, entre outros. Usaremos o B.L.O.C para fazer isso.

Ao clicar em um filme, todo o tema da aplicação deve ser alterado. Ao se tratar de um filme de suspense, por exemplo, o tema passará a ser escuro.


### Objetivos
   
  
  - Na tela Home, se tem uma lista de filmes carregada da API, usar o filtro de gênero, fazendo com que os filmes sejam apresentado conforme a categoria escolhida e adaptar o tema da pagina para ser usado apartir de uma classe cubit
  
  - A troca de cor do tema da aplicação conforme o gênero, acionada quando abrimos a página de informações de um filme.

Com essas implementações, foi visto :

 - Como separar o projeto em camadas (componentes visuais, modelos, telas e temas)
 - Como é utilizar o padrão de gerenciamento de estados BLoC para criar a camada de lógica
 - Como utilizar o Home Cubit para carregar, tratar e devolver informações da API para a tela
 - Lidar com os estados da tela Home (inicial, de carregamento, de sucesso e de erro) 
    criando o arquivo home_states.dart para representá-los
 - Chamar e recolher informações da Home por meio do BlocBuilder
 - Identificar os tipos de BLoC e os tipos de estado
 - Identificar as diferenças entre BLoC e Cubit e onde utilizá-los
 - Utilizar o BlocProvider com injeção de dependência na Main para lidar com BLoCs e Cubits em vários locais da aplicação


   
