def sum(array)
	array.inject(0,:+)
end

def max_2_sum(array)
	array.sort.last(2).inject(0,:+)
end

def sum_to_n?(array, n)
	return false unless array.size > 1
	elements = Hash.new
	array.each do |x|
		if elements.has_key?(x)
			elements[x] += 1
		else
			elements[x] = 1
		end
	end
	for x in array
		if (n - x) == x
			if elements[x] > 1
				return true
			end
		else
			if elements.has_key?(n - x)
				return true
			end
		end
	end
	return false
end