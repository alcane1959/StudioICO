# Studio ICO

Conversor de imagens para arquivos `.ico`, desenvolvido com HTML, CSS e JavaScript puro e executado diretamente no navegador.

## Sobre o projeto

O **Studio ICO** permite selecionar uma ou várias imagens e convertê-las individualmente para o formato ICO. Cada arquivo gerado reúne versões da imagem em vários tamanhos, preservando a proporção original e preenchendo com transparência o espaço restante.

Todo o processamento ocorre localmente no navegador. A aplicação utiliza elementos nativos da plataforma web para abrir as imagens, redimensioná-las em `canvas`, gerar os PNGs internos, montar a estrutura binária do ICO e iniciar o download.

## Funcionalidades

- Seleção de uma ou várias imagens.
- Suporte a clique e arrastar e soltar.
- Operação da área de seleção por teclado.
- Validação dos formatos selecionados.
- Conversão individual de cada imagem para ICO.
- Inclusão de sete resoluções no mesmo arquivo.
- Preservação da proporção original.
- Centralização da imagem em fundo transparente.
- Download automático dos arquivos convertidos.
- Barra de progresso com percentual e etapa atual.
- Mensagens de sucesso, falha total ou falha parcial.
- Limpeza da seleção atual.
- Interface responsiva com tema escuro.

## Formatos aceitos

A aplicação aceita os seguintes formatos de entrada:

- PNG
- JPG
- JPEG
- WebP
- GIF estático
- BMP

> GIFs animados não são processados como animação. O projeto foi desenhado para GIF estático.

## Tamanhos incluídos no ICO

Cada arquivo ICO contém imagens nas seguintes dimensões:

```text
16 x 16 px
24 x 24 px
32 x 32 px
48 x 48 px
64 x 64 px
128 x 128 px
256 x 256 px
```

## Tecnologias utilizadas

- HTML5
- CSS3
- JavaScript Vanilla
- Canvas API
- Blob API
- File API
- Object URLs
- Typed Arrays
- ArrayBuffer e DataView

## Estrutura do projeto

```text
studio-ico/
├── index.html
├── icon.ico
└── README.md
```

A interface, os estilos e a lógica de conversão estão concentrados no arquivo `index.html`.

## Como executar

1. Baixe os arquivos do projeto.
2. Mantenha o `index.html` e o `icon.ico` na mesma pasta.
3. Abra o `index.html` em um navegador moderno.
4. Clique na área de seleção ou arraste as imagens para ela.
5. Clique em **Converter para ICO**.
6. Aguarde a conclusão e verifique os arquivos baixados pelo navegador.

O projeto não exige instalação de pacotes, compilação ou servidor de aplicação.

## Como funciona a conversão

1. Os arquivos selecionados são validados pelo tipo MIME ou pela extensão.
2. Cada imagem é aberta por uma URL temporária criada no navegador.
3. A imagem é redimensionada em um `canvas` para cada tamanho configurado.
4. A proporção original é mantida e a imagem é centralizada.
5. Cada canvas é transformado em um PNG interno.
6. Os bytes dos PNGs são organizados em uma estrutura ICO por meio de `ArrayBuffer` e `DataView`.
7. O arquivo final é criado como `Blob` e baixado com a extensão `.ico`.

## Uso

### Selecionar imagens

Clique na área tracejada, pressione `Enter` ou espaço quando ela estiver em foco, ou arraste os arquivos para a página.

### Converter

Depois de uma seleção válida, o botão **Converter para ICO** é habilitado. Durante o processo, a interface informa o arquivo atual e o percentual de conclusão.

### Limpar

O botão **Limpar** remove a seleção e reinicia os indicadores da interface.

## Privacidade

A conversão ocorre no navegador. O código não implementa envio das imagens para servidor, armazenamento remoto ou banco de dados.

## Acessibilidade

O projeto inclui:

- área de seleção operável por teclado;
- estado de foco visível;
- rótulo acessível na área de seleção;
- mensagens de status anunciadas por `aria-live`;
- elemento nativo `progress` para indicar o andamento.

## Compatibilidade

Use um navegador moderno com suporte a:

- Canvas API;
- `canvas.toBlob()`;
- Blob e `arrayBuffer()`;
- Typed Arrays e DataView;
- Object URLs;
- atributo `download` em links.

O navegador pode solicitar autorização para múltiplos downloads quando várias imagens forem processadas de uma só vez.

## Limitações

- Cada imagem gera um arquivo ICO separado.
- GIFs animados não são preservados como animação.
- Imagens muito grandes ou muitos arquivos simultâneos podem consumir mais memória.
- O resultado depende do suporte do navegador aos formatos de origem.
- O projeto não oferece recorte manual, filtros ou edição da imagem.

## Personalização

Os tamanhos podem ser modificados no array `SIZES`:

```javascript
const SIZES = [16, 24, 32, 48, 64, 128, 256];
```

As cores principais estão disponíveis como variáveis CSS no seletor `:root`:

```css
:root {
  --bg1: #0f172a;
  --bg2: #1e1b4b;
  --primary: #6366f1;
  --text: #f8fafc;
  --success: #4ade80;
  --error: #f87171;
}
```
---

### Instalação no computador

### No Google Chrome ou Microsoft Edge:

  1. Abra o endereço publicado do projeto.
  2. Aguarde o carregamento completo da página.
  3. Clique no ícone de instalação exibido na barra de endereço ou abra o menu do navegador.
  4. Selecione Instalar aplicativo ou Instalar este site como aplicativo.
  5. Confirme a instalação.

Depois disso, o aplicativo poderá ser aberto pelo menu Iniciar, pela área de trabalho ou pelo gerenciador de aplicativos do sistema.

### Instalação no celular ou tablet

### Em navegadores compatíveis:

1. Abra o endereço do projeto.
2. Acesse o menu do navegador.
3. Selecione Instalar aplicativo ou Adicionar à tela inicial.
4. Confirme o nome e a instalação.

O ícone será adicionado à tela inicial do dispositivo.

**Observações**

A disponibilidade e o nome da opção de instalação podem variar conforme o navegador e o sistema operacional.
Abrir somente o arquivo index.html pelo computador não garante a instalação como PWA.
O projeto deve ser publicado em HTTPS para utilizar os recursos completos de instalação e service worker.
O funcionamento offline depende da configuração do service-worker.js e dos arquivos adicionados ao cache.
Atualizações no projeto podem exigir a atualização da versão do cache do service worker.

---

## Autor

**Alberto de Campos Neto**

## Aviso

> Este projeto é uma demonstração educacional desenvolvida para estudos de HTML, CSS e JavaScript. A empresa mencionada é fictícia e qualquer semelhança com empresas reais é mera coincidência.
