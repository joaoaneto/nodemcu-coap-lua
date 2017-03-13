local module = {}

dofile("dht_11_update.lua")

local function put_data()
    json_text = cjson.encode(getTemp())
    cc:put(coap.CON, config.ENDPOINT, json_text)
end

-- make json format
local function m_json()
    json_text = cjson.encode(getTemp())
    return json_text 
end

local function coap_start()

    cc = coap.Client()

    tmr.stop(6)
    tmr.alarm(6, 60000, 1, put_data)

end

function module.start()
    coap_start()
end

return module
