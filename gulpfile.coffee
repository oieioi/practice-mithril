gulp = require 'gulp'
babelify = require 'babelify'
watchify = require 'watchify'
browserify = require 'browserify'
buffer = require 'vinyl-buffer'
source = require 'vinyl-source-stream'

entryPath = './src/app.js'
destPath  = './dist/'


gulp.task 'default', ['build']

gulp.task 'build', ->
  browserify(entryPath, debug: true)
    .transform(babelify)
    .bundle()
    .on('error', (err)-> )
    .pipe(source('bundle.js'))
    .pipe(buffer())
    .pipe(gulp.dest(destPath))
