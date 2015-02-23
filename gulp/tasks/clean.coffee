gulp   = require 'gulp'
del    = require 'del'
config = require('../config').clean

gulp.task 'clean', (done) ->
  del config.dirs, done