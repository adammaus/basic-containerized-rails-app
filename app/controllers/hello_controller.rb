class HelloController < ActionController::API
	def world
		render html: '<h1>Hello World!</h1>'.html_safe
	end
end