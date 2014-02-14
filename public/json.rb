require 'json'
require 'stackable'
require 'pp'

def jobs_city(city)
	jobs = Stackable.new.jobs_by_location(city)
	jobs.map do |job| 
		tags = job["tag_names"].map do |tag|
			{ name: tag, children: [] }
		end

		{name: job["company_name"], children: tags }
	end

# 	# job.map { |j| j["tag_names"]}
end

# def tags(job)
# end


root = {name: "Stack Overflow", children: []}
['paris', 'berlin'].each do |city|
	root[:children] << { name: city, children: jobs_city(city)  }
end



# puts tags("The Beans Group")
puts root.to_json 