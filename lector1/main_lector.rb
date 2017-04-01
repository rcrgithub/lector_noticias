require 'rest-client'
require 'json'
require_relative 'Util'
require_relative 'Reddit'
require_relative 'Mashable'
require_relative 'Digg'
require_relative 'Matriz'
include Util
menu
reddit = Reddit.new
mashable = Mashable.new
digg = Digg.new
matriz = Matriz.new
a = []
b = []
c = []
d = []
cycle = true
while cycle
    opcion = menu
    case opcion
    when 1 then
        reddit.redit(b)
    when 2 then
        mashable.masha(a)
    when 3 then
        digg.dig(c)
    when 4 then
        matriz.matri(d)
    when 5 then
        puts 'Presione Enter para continuar...'
        cycle = false
    else
        puts 'Opcion incorrecta'
        puts 'Presione Enter para continuar...'
    end
    gets
end
