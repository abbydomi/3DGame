
function wrap(value, minValue, maxValue) {
	
	var _value = floor(value)
	var _min = floor(min(minValue, maxValue))
	var _max = floor(max(minValue, maxValue))
	var range = _max - _min + 1 // + 1 is because max bound is inclusive

	return (((_value - _min) % range) + range) % range + _min
}