local io = require("io")
local socket = require("socket")

local fd = socket.connect("127.0.0.1", 8989);

print("connect fd:", fd)

for line in io.stdin:lines() do
        socket.send(fd, line);
        local data = socket.recv(fd)
        print("--recv:", data)
end

socket.close(fd);
