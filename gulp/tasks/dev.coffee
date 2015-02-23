gulp  = require 'gulp'
require './coffee'
require './sass'
require './copyDev'
require './copyJspmDev'

gulp.task 'dev', gulp.parallel('coffee', 'copyJspmDev', 'sass', 'copyDev')
