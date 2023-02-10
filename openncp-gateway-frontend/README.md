# openncp-gateway-frontend

## Project setup

You can specify env variables by placing the following files in your project root:
```
.env                # loaded in all cases
.env.local          # loaded in all cases, ignored by git
.env.[mode]         # only loaded in specified mode
.env.[mode].local   # only loaded in specified mode, ignored by git
```

An env file simply contains key=value pairs of environment variables. Add the server URL:

```
VUE_APP_SERVER_URL=http://localhost:8080/openncp-gateway-backend
```
Run in a terminal the command

```
npm install
```



### Compiles and hot-reloads for development

```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
