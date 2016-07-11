# as a separate method
def indifAccess(hash, key)
	if key.is_a? String
		hash[key.to_sym]
	else
		hash[key]
	end
end

hash = { a: 1, b: 2, c: 3}
puts indifAccess(hash, :b)
puts indifAccess(hash, "c")

# for an object
def hash.indifAccess(key)
	if key.is_a? String
		self[key.to_sym]
	else
		self[key]
	end
end

puts hash.indifAccess(:b)
puts hash.indifAccess("c")




class CoolHash < Hash
	# attr_reader :hash

	def initialize(h)
		h.keys.map do |k| 
			if k.is_a? String 
				k.to_sym
				puts k  
			end
		end
		@hash = h
	end

	def get
		return @hash
	end
end

hash = { a: 1, "b": 2, c: 3}
hash[:a] = 3
puts hash