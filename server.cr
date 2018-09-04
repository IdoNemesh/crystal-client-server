require "socket"
require "msgpack"

server = TCPServer.new("localhost", 8820) # creats a new tcp server and listens on port
while client = server.accept?             # returns the socket or nil
  puts String.from_msgpack(client)        # decodes and prints the message from the client
  server.close
end
