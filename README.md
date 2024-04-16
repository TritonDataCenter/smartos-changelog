# SmartOS Changelog

JavaScript/HTML Page for generating a pretty [SmartOS](http://smartos.org) Changelog.

<https://us-central.manta.mnx.io/Joyent_Dev/public/SmartOS/smartos.html>

## Usage

Run `make` to push `smartos.html` to `~~/public` on your manta account.  The Makefile
also supports the subcommands listed below.

```shell
$ make help
The following subcommands are available

... push (default)       push smartos.html to /${MANTA_USER}/public/smartos.html
... push/dev             push smartos.html to /${MANTA_USER}/public/smartos-dev.html
... diff                 diff smartos.html locally with /${MANTA_USER}/public/smartos.html remotely
... diff/dev             diff smartos.html locally with /${MANTA_USER}/public/smartos-dev.html remotely
... open                 open https://us-central.manta.mnx.io/${MANTA_USER}/public/smartos.html
... open/dev             open https://us-central.manta.mnx.io/${MANTA_USER}/public/smartos-dev.html
```

## License

MIT
