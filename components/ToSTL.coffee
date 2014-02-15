noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class ToSTL extends noflo.Component
  constructor: ->
    @inPorts =
      model: new noflo.Port 'object'
    @outPorts =
      out: new noflo.Port 'string'

    @inPorts.model.on 'data', (data) =>
      o = data.toStlString()
      @outPorts.out.send o

exports.getComponent = -> new ToSTL
