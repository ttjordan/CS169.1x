def hello(name) 
	"Hello, #{name}"
end

def starts_with_consonant?(s)
	/^[bcdfghjklmnpqrstvwxyz]/i === s
end

def binary_multiple_of_4?(s)
	if s == "0"
		return true
	end
	/^[10]*00$/ === s
end