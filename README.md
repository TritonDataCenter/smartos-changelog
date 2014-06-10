SmartOS Changelog
=================

JavaScript/HTML Page for generating a pretty [SmartOS](http://smartos.org) Changelog.

https://us-east.manta.joyent.com/Joyent_Dev/public/SmartOS/smartos.html

You can view the bleeding edge dev version here

https://us-east.manta.joyent.com/bahamas10/public/smartos.html

Usage
-----

Run `make` to push `smartos.html` to `~~/public` on your manta account.  The Makefile
also supports the subcommands listed below.

```
$ make help
The following subcommands are available

... publish (default)    push smartos.html to /bahamas10/public/smartos.html
... publish/dev          push smartos.html to /bahamas10/public/smartos-dev.html
... diff                 diff smartos.html locally with /bahamas10/public/smartos.html remotely
... diff/dev             diff smartos.html locally with /bahamas10/public/smartos-dev.html remotely
... open                 open https://us-east.manta.joyent.com/bahamas10/public/smartos.html
... open/dev             open https://us-east.manta.joyent.com/bahamas10/public/smartos-dev.html
```

License
-------

MIT
