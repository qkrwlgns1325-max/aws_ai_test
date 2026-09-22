require 'aws-sdk-comprehend'
require 'pry'

client = Aws::Comprehend::Client.new
text1 = "Hello World! I am Park, doing a test with Amazon Comprehend"
text2 = "Hello World! I am Park, doing a test with Amazon Comprehend. I hate this service!"

resp = client.detect_sentiment({
    text: text2, 
    language_code: 'en'
})
## binding.pry
puts resp.sentiment
