# Cookbook Node.js #

Install Node.js.

You can set the version by setting a node/role attribute:

## Berksfile
```
# ssh
cookbook 'nodejs', git: 'git://github.com/fabiohbarbosa/cookbook-nodejs.git'


```

## Attributes

**Example:**

```json
"nodejs": {
  "version": "6.9.1",
  "dependencies": ["bower", "gulp", "etc.."]
},
"run_list": [
  "recipe[nodejs]"
]
```

**[nodejs] [version]**:  
Node.js version  

*Type: String*  
*Default: stable*  

**[nodejs] [dependencies]**:  
Global modules

*Type: Array[String]*

## After Build
If necessary, change Node.js version
```sh
sudo n version
```

Find versions [here](https://nodejs.org/en/download/releases/).
