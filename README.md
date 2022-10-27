<p align="center">
  <img  src="./assets/cover-elixir.png">
</p>

<h1 align="center">
  Ignite (Elixir) - Rocketseat
</h1>

<h3 align="center">
✅  Chapter V - Desafio 01: Filas
</h3>

</p>

</br>

<blockquote align="center">“Tudo deveria se tornar o mais simples possível, mas não simplificado - Albert Einstein”!</blockquote>

</br>
<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/cleyton1986/rocketseat-ignite-Elixir-Chapter-III-CRUD-meals?color=%2304D361">

  <a href="https://www.linkedin.com/in/cleytonalves">
    <img alt="Made by Cleyton" src="https://img.shields.io/badge/Made%20by-Cleyton_Alves-Alves%2304D361">
  </a>

  <img alt="License" src="https://img.shields.io/badge/license-MIT-%2304D361">

  <a href="https://github.com/cleyton1986/rocketseat-ignite-Elixir-Chapter-III-CRUD-meals/stargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/cleyton1986/rocketseat-ignite-Elixir-Chapter-III-CRUD-meals?style=social">
  </a>
</p>

<p align="center">
  <a href="#tecnologias-e-recursos">Tecnologias e Recursos</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#sobre-o-desafios">Sobre o desafios</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#específicação-dos-testes">Especificação de testes</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#instalação-e-execução">Instalação e execução</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#calendar-entrega">Entrega</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#memo-licença">Licença</a>
</p>


## Tecnologias e recursos

- [Elixir](https://elixir-lang.org/install.html)

</br>

## Sobre o desafios
Nesse desafio, você deverá criar uma aplicação em Elixir (somente Elixir), onde nessa aplicação teremos um módulo que implementa a estrutura de dados Fila utilizando Genservers.

<aside>
💡 Uma estrutura de fila na programação é equivalente à uma fila no mundo real, onde o primeiro elemento inserido em uma lista é também o primeiro a ser removido. 
Mais detalhes sobre esse tipo de estrutura [aqui](https://www.cos.ufrj.br/~rfarias/cos121/filas.html#:~:text=Filas%20%2D%20Queue,e%20remove%2Dse%20do%20in%C3%ADcio).

</aside>

A fila deve ser criada em um módulo chamado Queue, respeitando o seguinte contrato:

```bash
iex> {:ok, pid} = Queue.start_link(estado_inicial_da_fila) # ex: Queue.start_link([1,2,3])
{:ok, #PID<0.122.0>}

iex> Queue.enqueue(pid, 5)
:ok

iex> Queue.dequeue(pid)
1
```

Para a função `enqueue/2`, utilize em seu callback uma função `handle_cast/2` e para `dequeue/1` uma do tipo `handle_call/3`.
Em caso de qualquer dúvida, você pode conferir a documentação oficial do GenServer: [https://hexdocs.pm/elixir/GenServer.html](https://hexdocs.pm/elixir/GenServer.html).

No exemplo acima, a função `Queue.start_link` é chamada para iniciar a fila com uma lista contendo três valores `[1, 2, 3]`. Após isso, é chamada a função `Queue.enqueue` com o pid e um novo valor a ser acrescentado na fila e ao chamar a função `Queue.dequeue` com o pid, é removido o primeiro valor da fila que era o `1`.

<aside>
⚠️ Você não precisa deixar o seu GenServer rodando sobre um Supervisor nesse desafio.

</aside>


</br>

## :calendar: Entrega

Esse desafio foi entregue na plataforma Skylab - Rocketseat.
</br>

<p align="center">
  <img  src="./assets/test-result.png">
</p>

## Instalação e execução

### Configuração do ambiente:
<p>
  💿 (
    <a href="https://www.notion.so/Ambiente-de-desenvolvimento-Trilha-Elixir-aa2399b4ec17447582d04cbce8ffa12f">Guia de instalação e configuração do Ambiente - Elixir </a>
  )
</p>
</br>

```bash
# OBS.: ANTES DE PROCEDIMENTO, CERTIFIQUE-SE QUE O ELIXIR ESTEJA INSTALADO NO SEU COMPUTADOR CORRETAMENTE.

# Clone esse repositório
$ git clone https://github.com/cleyton1986/rocketseat-ignite-Elixir-Chapter-III-CRUD-meals

# Entre no diretório
$ cd rocketseat-ignite-Elixir-Chapter-III-CRUD-meals

# baixe as dependencias
$ mix deps.get

# para compilar o projeto, execute o comando
$ mix compile

# para rodar os testes, execute o comando
$ mix test

# para mais detalhes
$ mix test --cover

# acessando o iex
$ iex -S mix

# teste dos métodos usando usando o iex

```
## :memo: Licença

Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

 implementado por 👨🏽‍💻 Cleyton Alves e desenvolvido 💜 by Rocketseat.

