    ip = wifi.sta.getip()
    print(ip)
    --nil
    wifi.setmode(wifi.STATION)
    wifi.sta.config("RTD","maaktmeermogelijk")
    ip = wifi.sta.getip()
    print(ip)
    --192.168.18.110