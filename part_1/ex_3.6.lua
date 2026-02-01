local function volume_of_right_circular_cone(height, angle_rad)
	-- compute the R
	local r = height * math.tan(angle_rad)
	return height * r ^ 2 * math.pi / 3
end

print(volume_of_right_circular_cone(10, math.rad(30)))
