noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class Rectangle extends noflo.Component
  constructor: ->
    @width = null
    @height = null
    @inPorts =
      width: new noflo.Port 'number'
      height: new noflo.Port 'number'
    @outPorts =
      out: new noflo.Port 'object'

    @inPorts.width.on 'data', (data) =>
      @width = data
      @compute()
    @inPorts.height.on 'data', (data) =>
      @height = data
      @compute()

  compute: ->
    if @width? and @height?
      o = csg.CAG.rectangle {radius: [@width/2.0, @height/2.0] }
      @outPorts.out.send o

exports.getComponent = -> new Rectangle
