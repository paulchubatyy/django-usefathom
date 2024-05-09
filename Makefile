.PHONY: clean publish tools

all: tools dist publish

tools:
	python3 -m pip install poetry

dist:
	poetry build

clean: 
	rm -rf dist django_usefathom.egg-info

publish:
	poetry publish --build

PYPI_TOKEN ?= "set the token in your environment variable"
token:
	poetry config pypi-token.pypi $(PYPI_TOKEN)