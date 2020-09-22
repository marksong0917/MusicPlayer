
SLASH_HELLO1 = "/helloworld" 
SLASH_HELLO2 = "/hellow" 


-- Greeting message 

local function showGreeting(name)
    local worldPing = (select(4,GetNetStats())) 
    local currentTime = ((select(1,GetGameTime())))  - 12  -- Coverting 24 hour format into 12
    local greeting = "Hello, " .. name .. "!" .. " current time is: " .. currentTime ..
    " Your current ping is " .. worldPing .. "  Thank You For Using Hello World  "
    message(greeting)

end

-- /hello world name  

local function HelloWorldHandler(name) 
    local nameExists = string.len(name) > 0 
    -- name 
    -- Hello , {name}
    if(nameExists) then 
        showGreeting(name)
    else 
        local playerName = UnitName("player")  
        showGreeting(playerName)
    end
end 

SlashCmdList["HELLO"] = HelloWorldHandler; 

