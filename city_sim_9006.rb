require_relative 'CitySim'

# main function
raise "Only 1 integer argument needed, no more no less." unless ARGV.count == 1
	
seed = ARGV[0].to_i

for i in 1..5 do
	if seed != nil
		rng = Random.new (seed+i)
		driver = CitySim.new i, rng
	else
		driver = CitySim.new i
	end

	while driver.current_place != 'Outside'
		driver.get_next
	end
	driver.results

end
