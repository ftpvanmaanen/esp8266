led_wit=5
led_rood=8
led_groen=7
led_blauw=6
relais=0
pulse_relais=20000
pluse_led=750000

gpio.mode(relais, gpio.OUTPUT)
gpio.mode(led_wit, gpio.OUTPUT)
gpio.mode(led_rood, gpio.OUTPUT)
gpio.mode(led_groen, gpio.OUTPUT)
gpio.mode(led_blauw, gpio.OUTPUT)

for i=10,1,-1 do
gpio.write(relais, gpio.HIGH)
tmr.delay(pulse_relais)
gpio.write(relais, gpio.LOW)
tmr.delay(pulse_relais)
end

for i=10,1,-1 do
gpio.write(led_wit, gpio.HIGH)
tmr.delay(pluse_led)
gpio.write(led_wit, gpio.LOW)
tmr.delay(pluse_led)
gpio.write(led_rood, gpio.HIGH)
tmr.delay(pluse_led)
gpio.write(led_groen, gpio.HIGH)
tmr.delay(pluse_led)
gpio.write(led_blauw, gpio.HIGH)
tmr.delay(pluse_led)
gpio.write(led_rood, gpio.LOW)
tmr.delay(pluse_led)
gpio.write(led_groen, gpio.LOW)
tmr.delay(pluse_led)
gpio.write(led_blauw, gpio.LOW)
end
