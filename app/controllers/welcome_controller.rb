class WelcomeController < ApplicationController
  def index
    redis = Redis.new(host: 'redis', eort: 6379)
    redis.incr 'page hits'

    @page_hits = redis.get 'page hits'
  end
end
