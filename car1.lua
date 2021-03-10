Local seat = game.Workaspace.Seat.VehicleSeat
local Silnik = game.Workspace.Silnik.HingeConstraint
local servo = game.Workspace.Ster.HingeConstraint
local angularSpeed = 100
local maxPredkosc = 40
local angle = 40

local function onChanged (property)
   if property == "Throttle" then
      Silnik.AngularVelocity = maxPrekosc * seat.Throttle
  end
  if property == "Steer" then
      servo.AngularSpeed = angularSpeed
      servo.TargetAngle = angle * seat.Steer
 end
end

seat.Changed:Connect(onChanged)