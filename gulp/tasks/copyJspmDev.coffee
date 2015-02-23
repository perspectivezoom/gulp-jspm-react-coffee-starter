gulp       = require 'gulp'
reload     = require('browser-sync').reload
config     = require('../config').copyJspmDev

# Copies the jspm_packages and config.js folder into dev. This seems slightly preferable over adding the app_root to the dev server 
gulp.task 'copyJspmDev', ->
  gulp.src(config.src)
    .pipe gulp.dest(config.dest)
    .pipe reload(stream: true)