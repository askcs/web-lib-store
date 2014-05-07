'use strict'

module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig

    coffee:
      options:
        sourceMap:  true
        sourceRoot: ''
      dist:
        files: [
          expand: true
          cwd:    ''
          src:    '{,*/}*.coffee'
          dest:   ''
          ext:    '.js'
        ]

    watch:
      files: ['{,*/}*.coffee']
      tasks: ['coffee']

  grunt.registerTask 'build', ['watch']


  return