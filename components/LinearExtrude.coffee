noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class LinearExtrude extends noflo.Component
  constructor: ->
    @model = null
    @height = null
    @inPorts =
      model: new noflo.Port 'object'
      height: new noflo.Port 'number'
    @outPorts =
      out: new noflo.Port 'object'

    @inPorts.model.on 'data', (data) =>
      @model = data
      @compute()
    @inPorts.height.on 'data', (data) =>
      @height = data
      @compute()

  compute: ->
    if @model and @height
      d = 
        offset: [0, 0, @height]
      o = @model.extrude d
      @outPorts.out.send o

exports.getComponent = -> new LinearExtrude
