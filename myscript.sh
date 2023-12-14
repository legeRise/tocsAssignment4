venvname="venv"

if [ ! -d "$venvname" ]; then
    echo "the env didn't existed"
    python -m venv "$venvname"
    echo " now i have createdd"
fi
echo "waiting for 4"
sleep 4
echo " going to activate"
source "$venvname/bin/activate"
echo " it was activated"
pip install flask gunicorn

gunicorn -w 4 -b 0.0.0.0:5230 --reload wsgi:app
