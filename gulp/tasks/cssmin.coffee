gulp      = require 'gulp'
minifyCss = require 'gulp-minify-css'
config    = require('../config').cssmin

gulp.task 'cssmin', ->
  gulp.src(config.src)
    .pipe minifyCss(config.options)
    .pipe gulp.dest(config.dest)