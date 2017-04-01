require 'rest-client'
require 'json'
# include Utilities
class Mashable
    def masha(a)
        principal = {}
        principal['mashable'] = {}
        puts 'http://mashable.com/stories'
        r = RestClient.get 'http://mashable.com/stories.json'
        link = JSON.parse(r.body)

        for i in 0..link['new'].length - 1
            a[i] = []
            a[i][0] = link['new'][i]['post_date']
            puts "a[#{i},0]=  #{a[i][0]}"

            a[i][1] = link['new'][i]['author']
            puts "a[#{i},1]=  #{a[i][1]}"

            a[i][2] = link['new'][i]['link']
            puts "a[#{i},2]=  #{a[i][2]}"

            a[i][3] = link['new'][i]['title']
            puts "a[#{i},3]=  #{a[i][3]}"
            puts
            puts
            gets

         end
     end
 end
