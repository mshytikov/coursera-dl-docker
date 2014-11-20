## Docker image for coursera-dl

For lazy people like me, who don't want to setup whole development
environment(install pip, virtualenv, etc) on their home machine,
but want to backup coursera materials.

You need only docker to be installed.
(or only Vagrant, look inside Vagrant file)

### Usage with Docker

Create simple alias
```
alias coursera-dl='docker run --rm -v /tmp/coursera:/downloads coursera/coursera-dl'
```

Run your coursera-dl (without --path argument):

```
coursera-dl -u <YOUR_COURSERA_EMAIL> -p <PASS> hwswinterface-002
```

Your files now available in `/tmp/coursera` (owned by root user)

Enjoy.
