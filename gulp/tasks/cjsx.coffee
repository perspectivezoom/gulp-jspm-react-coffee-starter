gulp       = require 'gulp'
gutil      = require 'gulp-util'
cjsx       = require 'gulp-cjsx'
sourcemaps = require 'gulp-sourcemaps'
reload     = require('browser-sync').reload
config     = require('../config').cjsx

gulp.task 'cjsx', ->
  gulp.src(config.src)
    .pipe sourcemaps.init()
    .pipe cjsx(config.options).on('error', gutil.log)
    .pipe sourcemaps.write()
    .pipe gulp.dest(config.dest)
    .pipe reload(stream: true)