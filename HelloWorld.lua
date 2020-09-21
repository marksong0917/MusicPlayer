
SLASH_HELLO1 = "/helloworld" 
SLASH_HELLO2 = "/hellow" 

-- Greeting message 
local function showGreeting(name)
    local greeting = "Hello, " .. name .. "!" 

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



