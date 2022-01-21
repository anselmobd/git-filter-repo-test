# git-filter-repo-test

Teste do uso do git-filter-repo.

Por preciosismo resolvi que não bastava testar incluindo e excluindo arquivos no repositório.

Eu queria testar com um projeto mínimo funcional, para ver se, depois do necessário rebase do repositório em produção, a aplicação continuaria funcionando.

A aplicação é apenas um "Oi, mundo!" feito em Flask 2, rodando com Python 3.8.

Abaixo como implantar a aplicação e verificar o funcionamento.

```
mkdir ~/workdir

cd ~/workdir

git clone https://github.com/anselmobd/git-filter-repo-test.git

cd ~/workdir/git-filter-repo-test

python3.8 -m venv --prompt gfrt venv

. venv/bin/activate

pip install --upgrade pip

pip install -r requirements.txt

nohup python hello.py &
```

Testando:

```
curl http://localhost:5000/
```

Se aparecer

```
Oi, mundo!
```

tudo está funcionando corretamente.

Para parar a aplicação:

```
fg
```

Depois tecle Ctrl-C

Para limpar tudo

```
deactivate

cd ~

rm -rf ~/workdir

```
