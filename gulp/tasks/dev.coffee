gulp  = require 'gulp'
require './cjsx'
require './sass'
require './copyDev'

gulp.task 'dev', gulp.parallel('cjsx', 'sass', 'copyDev')
