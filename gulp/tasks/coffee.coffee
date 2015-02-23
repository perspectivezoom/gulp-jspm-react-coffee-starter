gulp       = require 'gulp'
gutil      = require 'gulp-util'
coffee     = require 'gulp-coffee'
sourcemaps = require 'gulp-sourcemaps'
reload     = require('browser-sync').reload
config     = require('../config').coffee

gulp.task 'coffee', ->
  gulp.src(config.src)
    .pipe sourcemaps.init()
    .pipe coffee(config.options).on('error', gutil.log)
    .pipe sourcemaps.write()
    .pipe gulp.dest(config.dest)
    .pipe reload(stream: true)