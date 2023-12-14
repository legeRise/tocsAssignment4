export JENKINS_NODE_COOKIE=dontKillMe
venvname="venv"

if [ ! -d "$venvname" ]; then
    python -m venv "$venvname"
fi
sleep 4
ls
source "/var/lib/jenkins/workspace/finalpipeline/$venvname/bin/activate"
pip install -r requirements.txt
gunicorn -w 4 -b 0.0.0.0:5230 --reload wsgi:app
