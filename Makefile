SHELL := /bin/bash

.DEFAULT: help
help:
	@echo "make venv"
	@echo "       Make a python virtual enviroment in the cwd and install requirements"
	@echo "make datasets"
	@echo "       Convert all datasets into html files using dataset_rawdata.py. The html will be placed in a directory in the top level of this repo called html_charts"

venv:
	pip install virtualenv
	python -m venv venv
	source venv/bin/activate && pip install git+https://github.com/Matatika/matatika-dataset-converter.git
datasets:
	source venv/bin/activate && convert bundle/analyze/datasets/tap-spotify/ rawdata/ bundle/analyze/datasets/tap-spotify/output || convert bundle/analyze/datasets/tap-spotify/ rawdata/ bundle/analyze/datasets/tap-spotify/output
	