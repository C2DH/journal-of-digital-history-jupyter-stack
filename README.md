- [Journal of Digital History Jupyter Stack](#journal-of-digital-history-jupyter-stack)
  - [Quick Start](#quick-start)
  - [For R's user](#for-rs-user)
  - [Developing and building local images](#developing-and-building-local-images)
  - [Resources](#resources)
  - [License](#license)


# Journal of Digital History Jupyter Stack

Journal of Digital History Jupyter Stack is a set of ready-to-run [Docker images](https://hub.docker.com/r/c2dhunilu/journal-of-digital-history-jupyter) containing specific version of Jupyter notebook along with the extensions needed to write and publish article for the [Journal of digital history](https://journalofdigitalhistory.org/).

You can use the docker image to:

- start a personal Jupyter Notebook server on your local machine;
- connect your [Zotero](https://www.zotero.org/) library to the jupyter citation manager extension to integrate your references in your notebooks;
- test your local notebook using the the [local notebook viewer](https://journalofdigitalhistory.org/en/local-notebook) of the Journal of Digital History.

## Quick Start

If you want to run it locally (or in your own server), first you need to install [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/). The latter is recommended to speed up the installation process.

**NOTE** For Windows OS, see our step-by-step guide [pdf format](https://github.com/C2DH/journal-of-digital-history-jupyter-stack/blob/master/docker-desktop-windows.pdf)

Clone the project:
```bash
git clone https://github.com/C2DH/journal-of-digital-history-jupyter-stack.git
```

Then open a terminal and run the command below at the root of the directory `journal-of-digital-history-jupyter-stack`

```bash
docker-compose up
```

The `docker-compose up` command pulls the latest [c2dhunilu/journal-of-digital-history-jupyter](https://hub.docker.com/r/c2dhunilu/journal-of-digital-history-jupyter) image if it is not already present on your local machine.
It then starts a container running a Jupyter Server and exposes the container's internal port `8888` to port `8889` of the host machine.

Open [http://localhost:8889](http://localhost:8889)` in a browser to get your Jupyter Notebook ready.

You will be asked for a `token` that you can find on the terminal console:

<img width="725" alt="Screenshot 2022-07-22 at 17 15 52" src="https://user-images.githubusercontent.com/1181642/180470322-1a5255f6-5ab7-4790-ba28-d51704c68582.png">


Once Jupyter Notebook has started, visit the page `Nbextensions`, uncheck the option **disable configuration for nbextensions without explicit compatibility (they may break your notebook environment, but can be useful to show for nbextension development)** to enable the installed extensions.
In this docker image we have included:

- the [jupyter citation manager](https://github.com/krassowski/jupyterlab-citation-manager) extension to integrate Zotero and use bibliographic references in your notebooks;
- the table of contents extension;
- the code prettify extension.

Visit the Journal of Digital History [guidelines](https://journalofdigitalhistory.org/en/guidelines) to understand the correct procedure to write compatible articles from your notebooks.

Enjoy!

## For R's user

Based on the [Rocker project](https://rocker-project.org/images/versioned/binder.html)

```bash
docker-compose -f docker-compose.dev.R.yml up --build
```

By default the R version 4.2.2 (2022-10-31) is used.
If you want to use another version of R, please update the [Dockerfile-R](https://github.com/C2DH/journal-of-digital-history-jupyter-stack/blob/master/Dockerfile-R), by upadting the:  FROM instruction.
The appropriate tag image can be found here: https://registry.hub.docker.com/r/rocker/binder/tags


> RStudio can be started and used in the browser by lauching the following url http://localhost:8889/rstudio/

## Developing and building local images

The official image will work for 90% of the use cases but if like to modify our official Dockerfile to fit your specific needs you will need to build your images in your machine.
We have a local docker-compose file to speed up the development:
 
```bash
docker-compose -f docker-compose.dev.yml up --build
```

## Resources

- [Guidelines of Journal of Digital History](https://journalofdigitalhistory.org/en/guidelines)
- [Author guidelines template for python's user](https://github.com/C2DH/template_repo_JDH)
- [Author guidelines template for R's user](https://github.com/C2DH/template_repo_JDH_R)

## License
  
GNU Affero General Public License (AGPL) 3 © University of Luxembourg

