local Dog = require("dog") -- require Dog closure
local myDog = Dog.new("Pluto", 2) -- create a new instance of Dog
myDog:speak() -- Say Woof!
myDog:printAge() -- Prints age
-- myDog:playDead() -- Rotates dog upsidedown

-- ALSO: Normal display object methods work!
-- myDog:setFillColor(0,1,1)

-- ALSO ALSO: You can even override inherited methods!
-- myDog:scale(2, 2)
