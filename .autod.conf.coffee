export default
  write: true
  prefix: '^'
  plugin: ''
  test: []
  dep: [
    "micro"
    "gulp"
    "gulp-better-rollup"
    "gulp-rename"
    "gulp-sequence"
    "rollup"
    "rollup-plugin-cleanup"
    "rollup-plugin-image"
    "rollup-plugin-re"
    "cfx.rollup-plugin-coffee2"
  ]
  devdep: [
    "autod"
    "cfx.require-plugin-coffee"
    "cfx.simple-build-tool"
    "ddeyes"
  ]
  exclude: [
    './packages'
    './.autod.conf.js'
  ]