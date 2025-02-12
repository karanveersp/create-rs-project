let packageJson = name =>
  `
{
  "name": "${name}",
  "version": "0.0.1",
  "description": "The great rescript project ${name}",
  "scripts": {
    "build": "rescript",
    "clean": "rescript clean -with-deps",
    "start": "rescript build -w""
  },
  "keywords": [
    "rescript"
  ],
  "author": "",
  "license": "MIT",
  "dependencies": {
    "rescript": "*"
  }
}
`

let bscongifJson = name =>
  `
{
  "name": "${name}",
  "version": "0.0.1",
  "sources": {
    "dir" : "src",
    "subdirs" : true
  },
  "package-specs": {
    "module": "commonjs",
    "in-source": true
  },
  "suffix": ".bs.js",
  "bs-dependencies": [
  ],
  "warnings": {
    "error" : "+101"
  },
}
`

let demoRes = `
Js.log("Hello, World!")
`

let gitIgnore = `
.DS_Store
/node_modules/
/lib/
.bsb.lock
.merlin
`
