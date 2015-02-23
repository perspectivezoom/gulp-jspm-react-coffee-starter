gulp   = require 'gulp'
config = require '../config'
require './sass'
require './coffee'
require './copyDev'
require './copyJspmDev'

gulp.task 'watch', ->
  gulp.watch config.sass.src, 'sass'
  gulp.watch config.coffee.src, 'coffee'
  gulp.watch config.copyDev.dirs, 'copyDev'
  gulp.watch config.copyJspmDev.src, 'copyJspmDev'