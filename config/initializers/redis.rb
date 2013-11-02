unless (cloud_url = ENV["REDISCLOUD_URL"]).blank?
  uri    = URI.parse(cloud_url)
  redis  = Redis.new(host: uri.host,
                      port: uri.port,
                      password:  uri.password,
                      user: uri.user)
  $redis = redis
else
  $redis = Redis.new
end

Split.redis = $redis
