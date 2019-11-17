class Application
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, hour_response ]
  end

  def hour_response
    (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
  end

end
