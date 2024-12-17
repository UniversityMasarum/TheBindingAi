local socket = require("socket")

-- Verbindung zum Server herstellen
local client = socket.tcp()
client:connect("127.0.0.1", 12345)  -- Verbindet sich mit dem Python-Server

-- Daten senden
local message = "Hallo vom Lua-Client!"
print("Sende Nachricht: " .. message)
client:send(message .. "\n")  -- Das '\n' hilft beim Empfang auf der Serverseite

-- Antwort empfangen
local response = client:receive()
print("Antwort vom Server: " .. response)

-- Verbindung schließen
client:close()
