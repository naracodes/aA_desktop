require 'rack'

app = Proc.new do |env|
    req = Rack::Request.new(env)
    res = Rack::Response.new
    res['Content-Type'] = "text/html"
    res.write("Hello world!")
    res.finish
    
end

Rack::Server.start(
    app: app,
    Port: 3000
)

# app_academy = Proc.new do |env|
#     req = Rack::Request.new(env)
#     res = Rack::Response.new
#     res['Content-Type'] = "text/html"
#     name = req.params['name']
#     p env
#     res.write("Hello #{name}!")
#     res.finish
# end

# Rack::Server.start(
#     app: app_academy,
#     Port: 3000
# )

#Would I need to set the path info to /i/love/app/academy and render each word when landing
# on localhost:3000/i/love/app/academy?