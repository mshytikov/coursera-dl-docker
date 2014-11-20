## Docker image for coursera-dl

For lazy people like me, who don't want to setup whole development
environment(install pip, virtualenv, etc) on their home machine,
but want to backup coursera materials, with [Coursera Downloader](https://github.com/coursera-dl/coursera)

You need only docker to be installed.
(or only [Vagrant](https://www.vagrantup.com), for more details look inside [Vagrant file](https://github.com/mshytikov/coursera-dl-docker/blob/master/Vagrantfile) )

### Usage with Docker

Create simple alias
```
alias coursera-dl='docker run --rm -v /tmp/coursera:/downloads mshytikov/coursera-dl-docker'
```

Run your coursera-dl (without --path argument):

```
coursera-dl -u <YOUR_COURSERA_EMAIL> -p <PASS> hwswinterface-002
```

Your files now available in `/tmp/coursera` (owned by root user)

Enjoy.
