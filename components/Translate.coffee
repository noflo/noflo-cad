noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class Translate extends noflo.Component
  constructor: ->
    @x = 0
    @y = 0
    @z = 0
    @model = null
    @inPorts =
      model: new noflo.Port 'object'
      x: new noflo.Port 'number'
      y: new noflo.Port 'number'
      z: new noflo.Port 'number'
    @outPorts =
      out: new noflo.Port 'object'

    # TODO: move this tedious code into a component subclass/factory
    @inPorts.x.on 'data', (data) =>
      @x = data
      @compute()
    @inPorts.y.on 'data', (data) =>
      @y = data
      @compute()
    @inPorts.z.on 'data', (data) =>
      @z = data
      @compute()
    @inPorts.model.on 'data', (data) =>
      @model = data
      @compute()

  compute: ->
    if @model
      o = @model.translate [@x, @y, @z]
      @outPorts.out.send o

exports.getComponent = -> new Translate
