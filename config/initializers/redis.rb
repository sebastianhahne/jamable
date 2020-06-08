if ENV["REDISCLOUD_URL"]
    uri = URI.parse(ENV["REDISCLOUD_URL"])
    $redis = Redis.new(host: uri.host, port: uri.port, password: uri.password)
    # $redis = Redis.new(:url => ENV["REDISCLOUD_URL"])
end
