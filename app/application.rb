class Application
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, hour_response ]
  end

  def hour_response
    time = Time.new
    (Time.now.hour.to_i >= 12).zero? ?  ["Good Afternoon!"] : ["Good Morning!"]
  end

end
