# Journal of Digital History Jupyter Stack

Journal of Digital History Jupyter Stack is a set of ready-to-run [Docker images](https://hub.docker.com/r/c2dhunilu/journal-of-digital-history-jupyter) containing Jupyter applications and some extenssion allowing to write and publish article for the [Journal of digital history](https://journalofdigitalhistory.org/).

You can use the stack image to do any of the following (and more):

- Start a personal Jupyter Notebook server in a local Docker container
- Connect your zotero library to cite2c in order to integrate your references
- Test your local notebook via the [viewer](https://journalofdigitalhistory.org/en/notebook-viewer-form) of the Journal of Digital History

## Quick Start

The examples below may help you get started if you [have Docker installed](https://docs.docker.com/install/).
Download the following project, open a terminal and run the command below at the root of the directory journal-of-digital-history-jupyter-stack

```bash
docker-compose up
```

The docker-compose pull the image [c2dhunilu/journal-of-digital-history-jupyter](https://hub.docker.com/r/c2dhunilu/journal-of-digital-history-jupyter) if it is not already present on the local host.
It then starts a container running a Jupyter Server and exposes the container's internal port `8888` to port `8889` of the host machine.

Visiting `http://localhost:8889/?token=<token>` in a browser loads JupyterNotebook,
where:

- `token` is the secret token printed in the console.

Visit the sub-item Nbextenssions,uncheck the checkbox **disable configuration for nbextensions without explicit compatibility (they may break your notebook environment, but can be useful to show for nbextension development)** to enable the extenssions:

- cite2c plugin for zotero
- table of contents
- code prettify

Visit the [guidelines](https://journalofdigitalhistory.org/en/guidelines?idx=15&layer=narrative&lh=1075&pidx=15&pl=narrative&y=251) of the Journal in order to know more about to use it in order to write your article.

## For development


```bash
docker-compose -f docker-compose.dev.yml up --build
```

## Resources

- [Guidelines of Journal of Digital History](https://journalofdigitalhistory.org/en/guidelines)
- [Author guidelines template for python's user](https://github.com/C2DH/template_repo_JDH)
- [Author guidelines template for R's user](https://github.com/C2DH/template_repo_JDH_R)

