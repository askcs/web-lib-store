'use strict'

module.exports = (grunt) ->
  grunt.initConfig

    uglify:
      options:
        banner: '/*!\n * LawnchairJS based storage\n * <%= grunt.template.today(\'dd-mm-yyyy hh:mm\') %>\n */\n'

      dist:
        files:
          'store.min.js': 'store.js'

  grunt.loadNpmTasks 'grunt-contrib-uglify'

  grunt.registerTask 'default', ['uglify']

  return