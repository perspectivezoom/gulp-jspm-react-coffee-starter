gulp     = require 'gulp'
imagemin = require 'gulp-imagemin'
config   = require('../config').imagemin

gulp.task 'imagemin', ->
  gulp.src(config.src)
    .pipe imagemin(config.options)
    .pipe gulp.dest(config.dest)