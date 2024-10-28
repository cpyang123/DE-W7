install: 
	pip install --upgrade pip && pip install -r requirements.txt

format:
	black accel_data/*.py

lint:
	pylint --disable=R,C --ignore-patterns=accel_data/test_.*?py accel_data/*.py

build:
	python -m build
	pip install --editable .

test:
	python -m pytest -cov=main test_main.py -v

extract:
	accel_data extract

transform_load: 
	accel_data transform_load

query:
	accel_data general_query

	
all: install format lint test extract transform_load query
