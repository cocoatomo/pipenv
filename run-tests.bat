virtualenv .venv
.venv\Scripts\pip install -e . --upgrade --upgrade-strategy=only-if-needed
.venv\Scripts\pipenv install --dev

SET PYPI_VENDOR_DIR=".\tests\pypi\" && .venv\Scripts\pipenv run pytest -n auto -v tests --tap-stream
