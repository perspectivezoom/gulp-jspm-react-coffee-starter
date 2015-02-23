gulp  = require 'gulp'
require './copyProd'
require './cssmin'
require './imagemin'
require './indexProd'
require './jsmin'

gulp.task 'prod', gulp.parallel('cssmin', 'imagemin', 'jsmin', 'indexProd', 'copyProd')
