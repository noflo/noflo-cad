noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class Circle extends noflo.Component
  constructor: ->
    @resolution = 32
    @inPorts =
      radius: new noflo.Port 'number'
      resolution: new noflo.Port 'number'
    @outPorts =
      out: new noflo.Port 'object'

    @inPorts.resolution.on 'data', (data) =>
        @resolution = data
    @inPorts.radius.on 'data', (data) =>
      @radius = data
      o = csg.CAG.circle({radius: @radius, resolution: @resolution})
      @outPorts.out.send o

exports.getComponent = -> new Circle
