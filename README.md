# Teste Bioinformatica 2021

## Teste técnico para processo seletivo Genomika-Einstein

Descrição
---------

Neste teste você deverá construir um pipeline de bioinformática usando linguagem do seu interesse (shell script, r , python, etc) para detecção e anotação de variantes oriundos de dados brutos de NGS DNASeq.  Os dados são de uma amostra de controle humano de sexo feminino. Neste teste você deverá desenvolver o pipeline seguindo as seguintes etapas:

 - Alinhamento das sequências de DNA (FASTQs)
 - Chamada e detecção de variantes SNVs e INDELs
 - Anotação de Variantes
 

Instruções
----------

- Realize o fork deste projeto para que crie um espelho em seu repositório (ex: github.com/marcelcaraciolo/bioinfotest) github. Mais instruções de como fazer o fork [aqui](https://docs.github.com/pt/free-pro-team@latest/github/getting-started-with-github/fork-a-repo).

- Os dados brutos das amostras se encontram on-line será necessário realizar o download das mesmas. Elas estão em formato FASTQ.gz

- Coloque todo o código realizado dentro da pasta `code` e os resultados coloque numa pasta `output` (Arquivos BAM, SAM, VCF, Arquivo de respostas).

- Há um questionário de perguntas dentro da pasta `output` com nome `QUESTION.txt` , responda as perguntas dentro do arquivo, salve e commit dentro do seu repositório quando concluído. Estas respostas são obrigatórias e farão parte de sua avaliação técnica.

- Não vamos precisar executar o código aqui localmente do seu pipeline, mas vamos querer ver como você realizou todo o processo desde o alinhamento até a chamada de variantes, portanto fica claro que não serão aceitas soluções em plataformas on-line automatizadas de pipeline como Galaxy, etc. O seu código pode ser colocado em um ou mais arquivos, fica à seu critério de como organizar o código do pipeline.

- Iremos utilizar o genoma de referência da UCSC hg19.fasta para alinhamento e chamada de variantes, para auxiliar o processo deixamos o link aqui dos arquivos necessários para esta etapa.

- Para as etapas de processamento , nossa recomendação de ferramentas são:

  -  BWA (http://bio-bwa.sourceforge.net/) para etapa de alinhamento
  -  FreeBayes (https://github.com/freebayes/freebayes) para etapas de chamada de variantes. Será necessário enviar um parâmetro com o arquivo das regiões-alvo de interesse (``--target``) , para que ele não rode o algoritmo de detecção em todo o genoma humano.  Disponibilizamos o arquivo de regiões neste repositório em ``data``: ``BRCA.list``.
  - snpeff para anotação funcional das variantes (https://pcingola.github.io/SnpEff/)
  
 - Para agilizar o desenvolvimento, criamos um arquivo ``Dockerfile`` a partir do sistema docker (https://www.docker.com/) contendo os arquivos necessários para a prova e já com os programas instalados, se seguir por este caminho poderá economizar um enorme tempo! Para facilitar após instalar o docker criamos o arquivo ``run_test.sh``que ao ser executado no terminal, já realiza o build da imagem do Dockerfile e já faz um ssh com a máquina. Rode a partir do diretório bioinfotest.
 

  
Resultados Esperados
--------------------

- Vamos precisar que sejam enviados os arquivos: BAM file com os alinhamentos, o BAI file (arquivo de índice), o VCF file (arquivo de variantes) e o arquivo anotado em formato VCF.

- O arquivo QUESTION.txt dentro da pasta ``output`` preenchido com as respostas embaixo de cada quesito. 

- Para facilitar ao terminar o seu teste, commit todo o seu projeto no seu respositório forkeado (bifurcado) e nos envie o link do seu repositório junto a resposta do seu teste admissional.
