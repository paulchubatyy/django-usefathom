.PHONY: clean publish tools

all: tools dist publish

tools:
	python3 -m pip install build twine

dist:
	python3 -m build

clean: 
	rm -rf dist django_usefathom.egg-info

publish:
	python3 -m twine upload --non-interactive dist/*