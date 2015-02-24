gulp   = require 'gulp'
config = require '../config'
require './sass'
require './cjsx'
require './copyDev'

gulp.task 'watch', ->
  gulp.watch config.sass.src, 'sass'
  gulp.watch config.cjsx.src, 'cjsx'
  gulp.watch config.copyDev.dirs, 'copyDev'