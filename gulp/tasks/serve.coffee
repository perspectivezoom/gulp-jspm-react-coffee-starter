gulp  = require 'gulp'
require './browserSync'
require './clean'
require './dev'
require './watch'

gulp.task 'serve', gulp.series('clean', 'dev', gulp.parallel('watch', 'browserSync'))