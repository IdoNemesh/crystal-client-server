require "socket"
require "msgpack"

client = TCPSocket.new("localhost", 8820)
msg = "Hello World".to_msgpack(client)
client.close
