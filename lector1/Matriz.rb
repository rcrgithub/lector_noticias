
require 'rest-client'
require 'json'

class Matriz
    def matri(d)
        principal = {}
        principal['reddit'] = {}
        r = RestClient.get 'https://www.reddit.com/.json'
        link = JSON.parse(r.body)
        s = 0
        d = []
        for i in 0..link['data']['children'].length - 1
            d[i] = []
            principal['reddit']['date'] = Time.at(link['data']['children'][i]['data']['created'])
            d[i][0] = Time.at(link['data']['children'][i]['data']['created'])
            puts "d[#{i},0]=  #{d[i][0]}"
            principal['reddit']['author'] = link['data']['children'][i]['data']['author']
            d[i][1] = link['data']['children'][i]['data']['author']
            puts "d[#{i},1]=  #{d[i][1]}"
            principal['reddit']['url'] = link['data']['children'][i]['data']['url']
            d[i][2] = link['data']['children'][i]['data']['url']
            puts "d[#{i},2]=  #{d[i][2]}"
            principal['reddit']['title'] = link['data']['children'][i]['data']['title']
            d[i][3] = link['data']['children'][i]['data']['title']
            puts "d[#{i},3]=  #{d[i][3]}"
            puts
            puts
            gets
            s += 1
        end
        puts
        gets
        j = 0
        principal = {}
        principal['mashable'] = {}
        puts 'http://mashable.com/stories'
        d = []
        r = RestClient.get 'http://mashable.com/stories.json'
        link = JSON.parse(r.body)
        for i in 0..link['new'].length - 1
            d[s] = []
            # d[s][0] = DateTime.rfc3339(link['new'][j]['post_date']).to_time.to_i
            d[s][0] = (link['new'][j]['post_date'])
            puts "d[#{s},0]=  #{d[s][0]}"
            d[s][1] = link['new'][j]['author']
            puts "d[#{s},1]=  #{d[s][1]}"
            d[s][2] = link['new'][j]['link']
            puts "d[#{s},2]=  #{d[s][2]}"
            d[s][3] = link['new'][j]['title']
            puts "d[#{s},3]=  #{d[s][3]}"
            puts
            puts
            gets
            j += 1
            s += 1
        end
        gets

        puts 'http://digg.com/api/news/popular'

        r = RestClient.get 'http://digg.com/api/news/popular.json'
        link = JSON.parse(r.body)
        j = 0
        c = []
        for i in 0..link['data']['feed'].length - 1
            d[s] = []
            d[s][0] = Time.at(link['data']['feed'][i]['date'])
            puts "d[#{s},0]=  #{d[s][0]}"
            d[s][1] = link['data']['feed'][i]['content']['title_alt']
            puts "d[#{s},1]=  #{d[s][1]}"
            d[s][2] = link['data']['feed'][i]['content']['author']
            puts "d[#{s},2]=  #{d[s][2]}"
            d[s][3] = link['data']['feed'][i]['content']['url']
            puts "d[#{s},3]=  #{d[s][3]}"
            puts
            puts

            gets
            s += 1
           end
   end
end
