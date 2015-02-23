gulp         = require 'gulp'
gutil        = require 'gulp-util'
sass         = require 'gulp-sass'
sourcemaps   = require 'gulp-sourcemaps'
autoprefixer = require 'gulp-autoprefixer'
reload       = require('browser-sync').reload
config       = require('../config').sass

gulp.task 'sass', ->
  gulp.src(config.src)
  .pipe(sourcemaps.init())
  .pipe(sass(config.options).on('error', gutil.log))
  .pipe(autoprefixer(config.autoprefixerOptions))
  .pipe(sourcemaps.write())
  .pipe(gulp.dest(config.dest))
  .pipe(reload(stream: true))