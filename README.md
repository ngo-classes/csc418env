# interactive_book
A template to support development of containerization learning materials

## Notes:

### Warning:

If you clone into a Windows environment, makes sure that your git is set to keep LF:

```bash
git config --global core.autocrlf false
git clone https://github.com/class-master/csc466env
```

### Building the images:

You should build the images in the following order:

```bash
docker compose build webapp --no-cache
docker compose build webdb --no-cache
```

### Launching the cluster:

You should launch in the following order:

```bash
docker compose up -d webapp
docker compose up -d webdb
```

### Build mkdocs server (for instructor)

`mkdocs serve --dev-addr=0.0.0.0:8000` to support external view of mkdocs
