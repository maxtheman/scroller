height = 600
width = 600
lvlHeight = -3000
lvlWidth = 0
gravity = 1
correction = 290
pos = { x = width/2, y = height/2}
speed = 2

--set screen size
resize = love.graphics.setMode(height,width,false,true,0)

function love.load()
--load images
   bg = love.graphics.newImage("level1Bg.png")
   lvl = love.graphics.newImage("castleLevel1.png")
   pc = love.graphics.newImage("player_image.png")
end

function love.draw()
--draw level + character
	love.graphics.draw(bg,lvlWidth,lvlHeight)
	love.graphics.draw(lvl,lvlWidth,lvlHeight+correction)
	love.graphics.draw(pc,pos.x,pos.y)
end

function love.update(dt)
	--make stuff happen when keys are held
	--up
	if love.keyboard.isDown("up") then
		lvlHeight = lvlHeight + speed
	end
	--down
	if love.keyboard.isDown("down") then
		lvlHeight = lvlHeight - speed
	end
	--left
	if love.keyboard.isDown("left") then
		lvlWidth = lvlWidth + speed
	end
	--right
	if love.keyboard.isDown("right") then
		lvlWidth = lvlWidth - speed
	end
	--gravity on pc
	if pos.y > lvl then
		pos.y = pos.y + gravity
	end
	
end