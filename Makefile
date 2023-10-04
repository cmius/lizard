setup:
	python3 -m venv venv
	. ./venv/bin/activate
	./venv/bin/pip install -r dev_requirements.txt

clean-build:
	@rm -fr build/
	@rm -fr dist/
	@rm -fr *.egg-info

build-lizard: clean-build
	. ./venv/bin/activate
	venv/bin/pip install -r dev_requirements.txt
	venv/bin/python setup.py build install
