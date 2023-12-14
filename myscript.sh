
if [ ! -d "venv" ]; then
    python -m venv "$venvname"
    sleep 4
fi

source "$venvname/bin/activate"
pip install flask gunicorn

gunicorn -w 4 -b 0.0.0.0:5230 --reload wsgi:app
