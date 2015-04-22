gulp   = require 'gulp'
config = require '../config'
require './sass'
require './cjsx'
require './copyDev'

gulp.task 'watch', ->
  gulp.watch config.sass.src, gulp.series('sass')
  gulp.watch config.cjsx.src, gulp.series('cjsx')
  gulp.watch config.copyDev.dirs, gulp.series('copyDev')