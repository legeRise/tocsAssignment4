venvname="venv"

if [ ! -d "$venvname" ]; then
    python -m venv "$venvname"
fi

. "$venvname/bin/activate"
pip install flask gunicorn

gunicorn -w 4 -b 0.0.0.0:5230 --reload wsgi:app
