noflo = require 'noflo'
openjscad = require 'OpenJSCADorg/openjscad.js'

class Viewer extends noflo.Component
  constructor: ->
    @width = null
    @height = null
    @container = null
    @viewer = null
    @model = null
    @inPorts =
      width: new noflo.Port 'number'
      height: new noflo.Port 'number'
      container: new noflo.Port 'object'
      model: new noflo.Port 'object'
    @outPorts =
      out: new noflo.Port 'object'

    @inPorts.width.on 'data', (data) =>
      @width = data
      @init()
    @inPorts.height.on 'data', (data) =>
      @height = data
      @init()
    @inPorts.container.on 'data', (data) =>
      @container = data
      @init()
    @inPorts.model.on 'data', (data) =>
      @model = data
      if @viewer
        @viewer.setCsg @model

  init: ->
    if @width? and @height? and @container?
      @viewer = new openjscad.Viewer @container, @width, @height, 10
      if @model
        @viewer.setCsg @model

exports.getComponent = -> new Viewer
