local M = {}

M.new = function(aName, anAge)



  -- Construct instance Dog that extends the display object
  local Dog = display.newImageRect("dog.jpg", 350, 350) or {}
  Dog.x = 400
  Dog.y = 600

  -- Public properties
  Dog.name = aName or "Sparky!"
  Dog.age = anAge or 0

  -- Private variables
  local dogToHumanYearRatio = 7



  -- Private functions
  local calculateAgeInDogYears = function(years, ratio)
    return years * ratio
  end



  -- Public methods
  function Dog:speak()
    print(self.name .. " says 'Woof!'")
  end

  function Dog:playDead(x, y)
    self.rotation = 175
  end

  function Dog:printAge()
    local dogAge = calculateAgeInDogYears(self.age, dogToHumanYearRatio)
    print(self.name .. " is " .. dogAge)
  end

  -- Override inherited methods
  function Dog:scale()
    print("`scale` method overriden!")
  end



  -- Return instance
  return Dog
end

return M
