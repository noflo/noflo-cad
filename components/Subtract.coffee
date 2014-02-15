noflo = require 'noflo'
csg = require 'OpenJSCADorg/csg.js'

class Subtract extends noflo.Component
  constructor: ->
    @modelA = null
    @modelB = null
    @inPorts =
      a: new noflo.Port 'object'
      b: new noflo.Port 'object'
    @outPorts =
      out: new noflo.Port 'object'

    @inPorts.a.on 'data', (data) =>
      @modelA = data
      @compute()
    @inPorts.b.on 'data', (data) =>
      @modelB = data
      @compute()

  compute: ->
    if @modelA and @modelB
      o = @modelA.subtract @modelB
      @outPorts.out.send o

exports.getComponent = -> new Subtract
