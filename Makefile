install:
	pip install --upgrade pip
	pip install -r requirements.txt

test:
	#ignores the virus of pandas warnings
	python -m pytest -vv test_fetch_cities.py

format:	
	black .


lint:
	pylint --disable=R,C fetch_cities.py

all: install format lint test