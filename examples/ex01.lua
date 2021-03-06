local ej = require "ejoy2d"
local fw = require "ejoy2d.framework"
local pack = require "ejoy2d.simplepackage"

pack.load {
	pattern = fw.WorkDir..[[examples/asset/?]],
	"sample",
}

local obj = ej.sprite("sample","cannon")
local turret = obj.turret
-- set position (-100,0) scale (0.5)
obj:ps(-100,0,0.5)

local obj2 = ej.sprite("sample","mine")
obj2.resource.frame = 70
obj2.label.text = "Hello World"
-- set position(100,0) scale(1.2) separately
obj2:ps(100,0)
obj2:ps(1.2)

local game = {}

local screencoord = { x = 512, y = 384, scale = 1.2 }

function game.update()
	turret.frame = turret.frame + 3
	obj2.frame = obj2.frame + 1
end

function game.drawframe()
	obj:draw(screencoord)
	obj2:draw(screencoord)
end

function game.touch(what, x, y)
end

ej.start(game)


