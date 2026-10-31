# Studio ICO

Conversor de imagens para o formato ICO que funciona diretamente no navegador. O aplicativo permite converter uma ou várias imagens, criar ícones com diversos tamanhos no mesmo arquivo e, opcionalmente, remover uma cor para produzir transparência.

## Funcionalidades

- Conversão de PNG, JPG, JPEG, WebP, GIF estático e BMP para ICO.
- Seleção de vários arquivos para conversão em sequência.
- Geração de um arquivo ICO com imagens nos tamanhos:
  - 16 × 16 px
  - 24 × 24 px
  - 32 × 32 px
  - 48 × 48 px
  - 64 × 64 px
  - 128 × 128 px
  - 256 × 256 px
- Preservação da proporção original da imagem.
- Opção para criar o ICO com ou sem transparência.
- Seleção manual da cor que será removida.
- Canetinha para copiar uma cor diretamente da imagem.
- Pré-visualização da transparência sobre fundo quadriculado.
- Ajustes de tolerância e suavização.
- Opção para remover somente o fundo conectado às bordas.
- Barra de progresso e mensagens de conclusão ou erro.
- Processamento local, sem necessidade de servidor.

## Como usar

1. Abra o arquivo `index.html` em um navegador moderno.
2. Clique na área de seleção ou arraste uma ou mais imagens para o aplicativo.
3. Se não quiser remover o fundo, mantenha a opção **Criar ICO com transparência** desmarcada.
4. Para remover uma cor de fundo, marque **Criar ICO com transparência**.
5. Escolha a cor que será removida pelo seletor, pelo código hexadecimal ou pela canetinha.
6. Ajuste a tolerância e a suavização observando o resultado na prévia.
7. Clique em **Converter para ICO**.
8. Os arquivos convertidos serão baixados pelo navegador.

## Seleção de cor com a canetinha

1. Marque **Criar ICO com transparência**.
2. Selecione uma imagem.
3. Clique no botão da canetinha.
4. Clique, dentro da prévia, sobre a cor que deverá ficar transparente.
5. A cor será copiada para o seletor e a prévia será atualizada automaticamente.

## Tolerância e suavização

### Tolerância

A tolerância determina a distância máxima entre a cor selecionada e as demais cores que também serão consideradas parte do fundo.

- Valor baixo: remove apenas cores muito próximas da cor escolhida.
- Valor alto: remove uma faixa maior de tons semelhantes.

Aumente a tolerância quando restarem partes do fundo. Reduza-a se detalhes importantes da imagem começarem a desaparecer.

### Suavização

A suavização cria uma transição gradual entre os pixels transparentes e os pixels preservados.

- Valor baixo: bordas mais firmes e definidas.
- Valor alto: faixa maior de pixels parcialmente transparentes.

A suavização atua principalmente nas bordas. Ela não deve ser usada como substituta da tolerância.

### Combinação recomendada

1. Comece com suavização baixa, entre 5 e 15.
2. Ajuste a tolerância até remover o fundo.
3. Aumente a suavização aos poucos se houver contorno ou serrilhado.
4. Se o desenho ficar apagado, reduza primeiro a tolerância.

Como ponto de partida, teste tolerância entre 30 e 40 e suavização entre 10 e 20.

## Fundo conectado às bordas

Quando **Remover somente o fundo conectado às bordas** está marcado, o aplicativo começa a remoção pelas extremidades da imagem. Isso ajuda a preservar áreas internas que tenham a mesma cor do fundo, mas que façam parte do desenho.

Desmarque essa opção somente quando quiser remover a cor correspondente em toda a imagem.

## Conversão sem transparência

Com **Criar ICO com transparência** desmarcado, a imagem é convertida sem remover a cor selecionada. O espaço criado para manter a proporção recebe a cor definida no seletor.

## Estrutura do projeto

```text
projeto/
├── index.html
├── icon.ico        # opcional, usado como ícone da página
└── README.md
```

## Instalação

O projeto não requer instalação, compilação, bibliotecas externas ou servidor.

Basta manter o `index.html` em uma pasta e abri-lo no navegador. O arquivo `icon.ico` é opcional e serve apenas como favicon da página.

## Compatibilidade

Recomenda-se utilizar uma versão recente de Microsoft Edge, Google Chrome, Mozilla Firefox ou outro navegador com suporte a Canvas, Blob, DataView e URL de objeto.

## Privacidade

As imagens são processadas localmente na página. O código não contém envio de arquivos para servidor ou serviço externo.

## Limitações

- GIFs animados são tratados como imagem estática.
- A qualidade da remoção depende da uniformidade do fundo e dos ajustes utilizados.
- Tolerância ou suavização excessivas podem remover detalhes próximos da cor escolhida.
- O navegador pode solicitar permissão para realizar vários downloads quando diversas imagens forem convertidas.

## Licença

Nenhuma licença específica foi definida no projeto. Se o aplicativo for distribuído publicamente, adicione um arquivo de licença compatível com o uso pretendido.
