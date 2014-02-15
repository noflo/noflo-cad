noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class Union extends noflo.Component
  constructor: ->
    @modelA = null
    @modelB = null
    @inPorts =
      a: new noflo.Port 'object'
      b: new noflo.Port 'object'
    @outPorts =
      out: new noflo.Port 'string'

    @inPorts.a.on 'data', (data) =>
      @modelA = data
      @compute()
    @inPorts.b.on 'data', (data) =>
      @modelB = data
      @compute()

  compute: ->
    if @modelA and @modelB
      o = @modelA.union @modelB
      @outPorts.out.send o

exports.getComponent = -> new Union
