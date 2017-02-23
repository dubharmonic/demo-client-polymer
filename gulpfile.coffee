express = require 'express'
gulp = require 'gulp'
pug = require 'gulp-pug'
watch = require 'gulp-watch'

server = express()
server.use express.static './public'
server.listen 8080

gulp.task 'default', ->
  gulp.src 'src/**/*.pug'
  .pipe watch 'src/**/*.*'
  .pipe pug
    pretty: true
  .pipe gulp.dest 'public'
