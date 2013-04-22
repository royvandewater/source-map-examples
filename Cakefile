which       = require('which').sync
{spawn}     = require 'child_process'


exec = (cmd, args=[], cb=(->), stdout=process.stdout.write) ->
  bin = spawn(which(cmd), args)
  bin.stdout.on 'data', stdout
  bin.stderr.on 'data', process.stderr.write
  bin.on 'exit', cb

task 'watch', 'Compile the coffee script file', ->
  exec 'coffee', ['--watch', '--compile', '--map', 'application.coffee']
