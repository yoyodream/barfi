# Usage: $ make {command}

.ONESHELL:

.PHONY: serve
serve: 
	cd frontend && npm run serve

.PHONY: run
run: 
	cd tests && streamlit run test_app.py 

.PHONY: test
test: 
	cd tests/unittests && python -m unittest discover

.PHONY: build
build: 
	rm -rf dist/* && python setup.py sdist bdist_wheel

.PHONY: upload
upload: 
	twine upload -u "__token__" -p "__password__" --skip-existing --verbose dist/*