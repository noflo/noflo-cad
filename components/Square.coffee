noflo = require 'noflo'
if noflo.isBrowser()
  WsClient = WebSocket
else
  WsClient = require('websocket').client

class Connect extends noflo.Component
  constructor: ->
    @protocol = 'noflo'
    @inPorts =
      url: new noflo.Port 'string'
      protocol: new noflo.Port 'string'

    @outPorts =
      connection: new noflo.Port 'object'
      error: new noflo.Port 'object'

    @inPorts.url.on 'data', (data) =>
      @connect data

    @inPorts.protocol.on 'data', (@protocol) =>

  connect: (url) ->
    if noflo.isBrowser()
      client = new WsClient url, @protocol
      client.onerror = @handleError
      client.onopen = =>
        @outPorts.connection.send client
      return
    client = new WsClient
    client.on 'connect', (connection) =>
      @outPorts.connection.send connection
      connection.on 'error', @handleError
    client.on 'connectFailed', @handleError
    client.connect url, @protocol

  handleError: (err) =>
    if @outPorts.error.isAttached()
      @outPorts.error.send err
      @outPorts.error.disconnect()
      return
    throw err

exports.getComponent = -> new Connect
