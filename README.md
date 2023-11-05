# docsFirst

The terminal window must be restarted in order for the OLLAMA_HOST environment variable to be set.

Also, you must be running Ollama natively (on the machine this docker container is running in). The default port it will run on is localhost 11434. However, if this is different on your machine, you will have to edit the export command in [postStart.sh](.devcontainer/postStart.sh) accordingly.
