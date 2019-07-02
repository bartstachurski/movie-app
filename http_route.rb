require 'http'
input = HTTP.get('http://localhost:3000/api/movies/1')
p input.parse
