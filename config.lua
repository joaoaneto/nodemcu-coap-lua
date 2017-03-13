-- file : config.lua
local module = {}

module.SSID = {}  
module.SSID["N-TEKNET - JOAONETO"] = "11235813"

module.ENDPOINT = "coap://192.168.0.102:5683/Write"

--module.HOST = "iot.eclipse.org"
--module.HOST = "mq.thingmq.com"   
--module.PORT = 1883
--module.ID = node.chipid()

--dofile("dht_11.lua")

--module.LUZ = getTemp()

--module.ENDPOINT = "nodemcu/"  
return module
