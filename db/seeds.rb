["PHP", "MySQL", "C#", "Ruby on Rails", "Ruby on Rails", "SQL Server", "Linux"].each do |skill|
Skill.find_or_create_by_name(skill)
end

["Chicago", "Boston", "Houston", "San Francisco", "London", "Mumbai"].each do |loc|
Location.find_or_create_by_location_name(loc)
end

["41.8819", "42.3581", "29.7628", "37.7833", "51.5072", "18.9750"].each do |latitude|
Location.find_or_create_by_latitude(latitude)
end

["-87.6278", "-71.0636", "-95.3831", "-122.4167", "-0.1275", "72.8258"].each do |longitude|
Location.find_or_create_by_longitude(longitude)
end