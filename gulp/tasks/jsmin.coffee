gulp   = require 'gulp'
shell  = require 'gulp-shell'
config = require('../config').jsmin

gulp.task 'jsmin', shell.task("jspm bundle-sfx #{config.src} #{config.dest} --skip-source-maps --minify")
