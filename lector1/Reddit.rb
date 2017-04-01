require 'rest-client'
require 'json'
class Reddit
    def redit(b)
        r = RestClient.get 'https://www.reddit.com/.json'
        link = JSON.parse(r.body)
        for i in 0..link['data']['children'].length - 1
            b[i] = []

            b[i][0] = Time.at(link['data']['children'][i]['data']['created'])
            puts "b[#{i},0]=  #{b[i][0]}"
            b[i][1] = link['data']['children'][i]['data']['author']
            puts "b[#{i},1]=  #{b[i][1]}"
            b[i][2] = link['data']['children'][i]['data']['url']
            puts "b[#{i},2]=  #{b[i][2]}"
            b[i][3] = link['data']['children'][i]['data']['title']
            puts "b[#{i},3]=  #{b[i][3]}"
            b[i][4] = 'reddit'
            puts
            puts
            gets
        end
  end
end
