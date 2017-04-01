
require 'rest-client'
require 'json'
class Digg
    def dig(c)
        puts 'http://digg.com/api/news/popular'

        r = RestClient.get 'http://digg.com/api/news/popular.json'
        link = JSON.parse(r.body)
        for i in 0..link['data']['feed'].length - 1
            c[i] = []
            c[i][0] = Time.at(link['data']['feed'][i]['date'])
            puts "c[#{i},0]=  #{c[i][0]}"

            c[i][1] = link['data']['feed'][i]['content']['title_alt']
            puts "c[#{i},1]=  #{c[i][1]}"

            c[i][2] = link['data']['feed'][i]['content']['author']
            puts "c[#{i},2]=  #{c[i][2]}"

            c[i][3] = link['data']['feed'][i]['content']['url']
            puts "c[#{i},3]=  #{c[i][3]}"
            puts
            puts

            gets
            end
  end
end
