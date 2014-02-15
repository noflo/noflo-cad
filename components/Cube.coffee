noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class Cube extends noflo.Component
  constructor: ->
    @inPorts =
      radius: new noflo.Port 'number'
    @outPorts =
      out: new noflo.Port 'object'

    @inPorts.radius.on 'data', (data) =>
      o = csg.CSG.cube({radius: data})
      @outPorts.out.send o

exports.getComponent = -> new Cube
