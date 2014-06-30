run -> (env) { [200, {'Content-Type' => 'text/html'}, [Rack::Request.new(env).params.to_s]] }
