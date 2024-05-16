FROM quay.io/jupyter/base-notebook:python-3.11
#FROM jupyter/base-notebook:python-3.9.5
WORKDIR $HOME
## Install Python citation manager
RUN pip install --no-cache-dir jupyterlab-citation-manager
COPY requirements.txt .
RUN pip install -r requirements.txt
ENTRYPOINT jupyter lab --allow-root