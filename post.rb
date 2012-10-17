require 'rest_client'

params ='{"Params":{ "socialId":"1213", "accountType":"123", "wordId":"1213", "packId":"123", "videoWOWZAUrl":"1213", "Base64Data" : "dsadsa.png" }}'
video = {:Base64Data => File.new('video.mov'), :Base64Thumbnail => "asdsad"}
puts video

res = RestClient.post('http://50.112.145.70:3000/api/video/getVideoURL.json', 
  'params1'=>params, "params" => video)

puts res.body
