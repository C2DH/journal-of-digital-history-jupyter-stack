
FROM jupyter/r-notebook:x86_64-r-4.3.1

WORKDIR /home/jovyan/work

###############################################################################
# Copying entire repo
###############################################################################
COPY . .
# install.R must live at the repo root; it’ll now be in /home/jovyan/work/install.R
RUN Rscript -e "options(repos = c(CRAN='https://cloud.r-project.org')); \
               source('install.R')"

CMD ["start.sh"]

# example url to start binder: https://mybinder.org/v2/gh/*USERNAME*/*NAME_OF_THE_REPO*/HEAD?filepath=*ARTICLE_NAME*.ipynb