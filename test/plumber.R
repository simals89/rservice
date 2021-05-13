#* @get /riegel
function(time, exponent = 1.06) {
	# API inputs are character.
	time = as.numeric(time)
	exponent = as.numeric(exponent)
	# Fixed distances.
	distance = 5
	goal = 42.2
	# Calculate time for goal distance.
	time * (goal / distance) ** exponent
}
