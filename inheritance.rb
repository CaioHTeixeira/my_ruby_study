class Sensor
    def instalar
        puts "Estou instalando o sensor"
    end

    def iniciar
        puts "Estou iniciando o sensor"
    end

    def coletar_metricas
        #sensor normal
        puts "Estou coletando métricas"
        puts "Estou analizando métricas"
    end
end

class SensorTemperatura < Sensor
    def coletar_metricas #sobrescreve o método do pai.
        puts "Estou coletando métricas de temperaturas"
        super #chama o método de coletar metricas do pai tbm.
    end
end

sensor = SensorTemperatura.new
sensor.instalar
sensor.iniciar
sensor.coletar_metricas