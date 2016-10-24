# Cookbook Node.js #

Install Node.js.

You can set the version by setting a node/role attribute:

## Berksfile
```
cookbook 'nodejs', git: 'git://github.com/fabiohbarbosa/cookbook-nodejs.git'
```

## Attributes

```json
"nodejs": {
  "version": "6.9.1"
},
"run_list": [
  "recipe[nodejs]"
]
```

**version**: *Default: stable*

## After Build
Change Node.js version
```sh
sudo n version
```

Find versions [here](https://nodejs.org/en/download/releases/).
