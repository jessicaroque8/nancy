require "./nancy"

get "/" do
  "Hey there!"
end

get "/hello" do
  "Nancy::Application says hello!"
end

get "/" do
  [200, {}, ["Your params are #{params.inspect}"]]
end

post "/" do
  [200, {}, request.body]
end

Rack::Handler::WEBrick.run Nancy::Application, Port: 9292
