require 'cowsay'
require_relative './FizzBuzz.rb'

Handler = Proc.new do |req, res|
    type = req.query['type']
    fizzbuzz = FizzBuzzService.new(FizzBuzzType.create(FizzBuzzType.value_of(type)))

    res.status = 200
    res['Access-Control-Allow-Origin'] = '*'
    res['Content-Type'] = 'text/plain'
    res.body = fizzbuzz.generate_json_list(100)
end