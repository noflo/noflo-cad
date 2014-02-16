noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class RoundedRectangle extends noflo.Component
  constructor: ->
    @width = null
    @height = null
    @roundRadius = 1
    @inPorts =
      width: new noflo.Port 'number'
      height: new noflo.Port 'number'
      roundradius: new noflo.Port 'number'
    @outPorts =
      out: new noflo.Port 'object'

    @inPorts.width.on 'data', (data) =>
      @width = data
      @compute()
    @inPorts.height.on 'data', (data) =>
      @height = data
      @compute()
    @inPorts.roundradius.on 'data', (data) =>
      @roundRadius = data
      @compute()

  compute: ->
    if @width? and @height?
      d = 
        radius: [@width/2.0, @height/2.0]
        roundradius: @roundRadius
      o = csg.CAG.roundedRectangle d
      @outPorts.out.send o

exports.getComponent = -> new RoundedRectangle
