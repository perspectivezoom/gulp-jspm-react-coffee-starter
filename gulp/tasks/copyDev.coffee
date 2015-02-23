gulp       = require 'gulp'
reload     = require('browser-sync').reload
config     = require('../config').copyDev

gulp.task 'copyDev', ->
  gulp.src(config.dirs)
    .pipe gulp.dest(config.dest)
    .pipe reload(stream: true)