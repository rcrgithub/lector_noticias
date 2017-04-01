
# require 'rest-client'
# require 'json'
# require_relative 'util'

module Util
    require 'rest-client'
    require 'json'
    require_relative 'Util'
    def menu
        system('clear')
        puts
        puts
        puts 'LECTOR DE NOTICIAS'
        puts
        puts
        puts
        puts
        puts
        print '                                '
        print '1.-    '
        print 'Mostrar Noticias de Reddit'
        puts
        puts
        print '                                '
        print '2.-    '
        print 'Mostrar Noticias de Mashable'
        puts
        puts
        print '                                '
        print '3.-    '
        print 'Mostrar Noticias de Digg'
        puts
        puts
        print '                                '
        print '4.     '
        print 'Todas  las  Noticias ordenadas por  Fecha'
        puts
        puts
        print '                                '
        print '5.-    '
        print 'Salir'
        puts
        puts
        puts
        print '                                '
        print 'Opcion: '
        opcion = gets.chomp.to_i
        opcion
    end
end
