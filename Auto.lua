local seat = game.Workspace.Base.VehicleSeat
local engine = game.Workspace.EnginePart.Engine
local servo = game.Workspace.ServoPart.Servo
local angle = 20
local maxPredkosc = 45
local angularSpeed = 40

local function onchanged(property)

	if property == "Throttle" then
		
		engine.AngularVelocity = maxPredkosc * seat.Throttle
		
	end
	
	if property == "Steer" then
		
		servo.AngularSpeed = angularSpeed
		servo.TargetAngle = angle * seat.Steer
		
	end
	
end

seat.Changed:Connect(onchanged)