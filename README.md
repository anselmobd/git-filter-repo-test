# git-filter-repo-test
Teste git-filter-repo use before use it in a productions repository

Utilizando Python 3.8 (mas deve funcionar que qq Python 3 compativel com Flask 2)

```
mkdir -p ~/workdir
cd ~/workdir

git clone https://github.com/anselmobd/git-filter-repo-test.git

cd ~/workdir/git-filter-repo-test

python3.8 -m venv --prompt gfrt venv

. venv/bin/activate

pip install --upgrade pip

pip install -r requirements.txt

nohup python hello.py &

curl http://localhost:5000/

fg

[ctrl-C]
```
