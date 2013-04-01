#\ -s puma

Dir.glob("./controllers/*.rb") do |controller|
	require controller
end

map("/") do
	run WelcomeController
end
