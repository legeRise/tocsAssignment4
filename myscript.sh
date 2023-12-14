venvname="venv"

if [ ! -d "$venvname" ]; then
    echo "the env didn't existed"
    python -m venv "$venvname"
    echo " now i have created"
fi
echo "waiting for 4"
sleep 4
echo " going to activate"
ls
source "/var/lib/jenkins/workspace/finalpipeline/$venvname/bin/activate"
echo " it was activated"
pip install -r requirements.txt

nohup gunicorn -w 4 -b 0.0.0.0:5230 --reload wsgi:app &
