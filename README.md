# jira-md

## JIRA to MarkDown text format converter

This project is based off the currently unmaintained J2M project by Fokke Zandbergen (http://j2m.fokkezb.nl/). In the author's words:

> Convert from JIRA text formatting to GitHub Flavored MarkDown and back again. Just because I got tired of reformatting text between GitHub (PR's) and JIRA.

I likewise quickly grew tired of Jira's formatting style and searched for a way to quickly convert files. I also didn't want my local environment to get bogged down in dependencies.

### Requirements

- docker-compose

### Installation

```
git clone https://github.com/egsy/jira-md.git
cd jira-md
docker-compose build && docker-compose up -d
```

### Usage

The following shows you how to run jira-md as a command line utility.
```
docker-compose exec jira-md j2m [--toM|--toJ] [--stdin] $filename

Options:
--toM, -m:    Treat input as jira text and convert it to Markdown
--toJ, -j:    Treat input as markdown text and convert it to Jira
--stdin:      Read input from stdin. In this case the give filename is ignored
```

See [original documentation](https://github.com/FokkeZB/J2M) for more information  about the methods exposed and usage.

### Example

- Test installation by running jira-md on the README.md file in this repo

```bash
docker-compose exec jira-md j2m --toJ README.md
```

- Convert notes to jira markup and copy it to the clipboard (mac)

```bash

docker-compose exec jira-md j2m --toJ README.md| pbcopy

```

- retrieve some file in jira markup and save it as markdown

```bash
 curl http://someserver.com/jira.txt | j2m --toM --stdin > notee.md
```