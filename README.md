This container runs the [Pino Pretty CLI](https://github.com/pinojs/pino-pretty) from [Pino Logger](https://getpino.io)

By default these options are used:
- --colorize

For example:  
```
$ pino myapp.js | docker run -i --rm gildas/pino
```

To get pino's help:

```
$ docker run --rm gildas/pino --help
```
