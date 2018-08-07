class ShippingContainer

	attr_reader :destination, :max_crates

	attr_accessor :max_weight, :crates


	def initialize(args={})
		@destination = args.fetch(:destination, "")
		@max_weight = args.fetch(:max_weight, 0)
		@max_crates = args.fetch(:max_crates, 0)
		@crates = args.fetch(:crates, [])
	end 

	def current_weight
	 containerWeight = 0
		@crates.each do |crate|
			containerWeight += crate.weight
		end 
	  return containerWeight
	end 

	def crates_count
		crates_count = 0
		@crates.each do |crate|
			crates_count += 1
		end

		return crates_count
	end 

	def add_crate(new_crate)
		testWeight = current_weight + new_crate.weight
		#numNewCrates = new_crate.count
		testCrates = crates_count + 1 #numNewCrates

		if testWeight < @max_weight && testCrates < @max_crates
			@crates.push(new_crate)
			true
		 else 
			false
		end  
	end 


end
