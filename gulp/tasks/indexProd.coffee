gulp        = require 'gulp'
htmlReplace = require 'gulp-html-replace'
config      = require('../config').indexProd

gulp.task 'indexProd', ->
  gulp.src(config.src)
    .pipe htmlReplace(config.options)
    .pipe gulp.dest(config.dest)