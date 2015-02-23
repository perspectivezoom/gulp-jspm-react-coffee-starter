gulp       = require 'gulp'
config     = require('../config').copyProd

gulp.task 'copyProd', ->
  gulp.src(config.dirs)
    .pipe gulp.dest(config.dest)