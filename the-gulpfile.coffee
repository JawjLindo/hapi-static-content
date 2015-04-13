gulp = require 'gulp'
lab = require 'gulp-lab'

gulp.task 'test', ->
    gulp.src [
        './test/index.js'
    ], {
        read: false
    }
        .pipe lab [
            '-v'
            '-l'
            '-C'
            '-c'
        ]
        
gulp.task 'default', [
    'test'
]

gulp.task 'docs', ->
    console.log 'This is a hapi.js plugin.'
    console.log 'This plugin does not run without being hosted in a hapi.js application'