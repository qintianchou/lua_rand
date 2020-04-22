local _rand = require('rand')

local rand = _rand.new(123)

print("name: " .. rand.name)
print("version: " .. rand.version)

for i = 1, 5 do 
    print(rand:next())
end
