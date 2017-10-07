# Scripts
Uma coleção de scripts auxiliares que escrevi e compartilho entre minhas máquinas. 😉

__Tudo que estiver na pasta__ [`thirdparty`](https://github.com/ajunior/scripts/tree/master/thirdparty) __não foi escrito por mim__. Estão lá por ser scripts que eu utilizo com frequência e para facilitar o compartilhamento deles entre as minhas máquinas.

Se algum dos scripts lhe interessou, sinta-se a vontade para usá-lo mas saiba que pode ser necessário adptá-lo a sua necessidade, pois eles foram escritos para funcionar de forma a atender minhas necessidades específicas.

## Lista de scripts

### [forg.sh](forg.sh)

Sou daquele tipo de pessoas que vão baixando diversos arquivos e os esquecem na pasta de downloads, mas que detestam acessar a pasta e encontrar tudo bagunçado. Por isso, escrevi esse script para organizar minha pasta de Downloads, movendo cada arquivo para uma subpasta específica referente ao seu tipo de arquivo.

__Exemplo:__ arquivos _.doc_ e _.txt_ são enviados para pasta ```Downloads/docs``` enquanto arquivos _.zip_, _.rar_ e _.tar.gz_ são movidos para pasta ```Downloads/zipped```.

Para automatizar esse processo de organização, agendei a execução do script usando `crontab`, para rodar uma vez por dia.

```
0 1 * * *  cd ~/projects/scripts/ && ./forg.sh
```

### [ptbdb.sh](ptbdb.sh)

Desenvolvi esse script para ajudar uma amiga a baixar automaticamente a base de dados [PTB Diagnostic ECG](https://physionet.org/physiobank/database/ptbdb/) da [PhysioNet](https://physionet.org), excluindo arquivos indesejados, para fins de uso no projeto do TCC (Trabalho de Conclusão de Curso) dela.

### [rnorm.py](rnorm.py)

Script para realizar uma tarefa do estágio. O script baixa as __resoluções normativas__ do Tribunal de Contas do Estado da Paraíba, de acordo com uma lista de urls contidas em um arquivo.

Não foi possível usar `wget` ou `curl` diretamente, pois o arquivo era salvo com o nome contido na url, quando era necessário ser salvo com o nome original do PDF.

O Sistem Operacional era o Windows 8.1, como eu não sei usar PowerShell escrevi o script em Python.

## Contato

__Adjamilton Junior__

- [Email](mailto:jr@ieee.org)
- [Twitter](https://twitter.com/ajr_almeida)
- [LinkedIn](https://www.linkedin.com/in/junioralmeida/)

## Licença

The scripts I wrote (i.e. not those under [`thirdparty`](https://github.com/ajunior/scripts/tree/master/thirdparty)) are licensed under the [GPLv3 License](https://en.wikipedia.org/wiki/GNU_General_Public_License). The full license text is available in [LICENSE.txt](https://github.com/ajunior/scripts/blob/master/LICENSE.txt).