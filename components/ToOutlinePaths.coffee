noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class ToOutlinePaths extends noflo.Component
  constructor: ->
    @inPorts =
      model: new noflo.Port 'object'
    @outPorts =
      out: new noflo.Port 'string'

    @inPorts.model.on 'data', (data) =>
      o = data.getOutlinePaths()
      @outPorts.out.send o

exports.getComponent = -> new ToOutlinePaths
