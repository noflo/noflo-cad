noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class ToDXF extends noflo.Component
  constructor: ->
    @inPorts =
      model: new noflo.Port 'object'
    @outPorts =
      out: new noflo.Port 'string'

    @inPorts.model.on 'data', (data) =>
      o = data.toDxfString()
      @outPorts.out.send o

exports.getComponent = -> new ToDXF
