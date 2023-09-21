# Plant-monitoring-and-watering-system-v2

This major project is an update of the minor project. This major project more complicated electronics
such as Ultrasonic senor and Bluetooth module. This helps monitor the plant effectively.

As mentioned above, this project water a plant when it’s dry and send a signal when it is watering. To
make this project more effective and technical, a smart phone-like monitoring device was built using a
Bluetooth module is used to receive data from the state of the soil of the plant through MATLAB.

The Bluetooth module used for this project is called DSD TECH HC-05 or simply known as HC-05. The
Bluetooth module will receive that data and display it on an LCD and gives a signal through another
buzzer. The data that is being send is the level of the water (if the water is running out) and if the plant
is being watered or not. The program used in the monitoring device was coded using Arduino IDE.
How does the program know when the water is running out? Well, this is where the Ultrasonic sensor
comes to play. Ultrasonic sensor is a sensor that can detect how far an object is from the sensor by
emitting rays and calculating how much time it takes for the ray to bound back from the object in front.
Thus, the Ultrasonic sensor was put at the top of the plastic container to detects if the water is getting
lower or not. If the water is at the bottom, MATLAB will send data to the Bluetooth saying, “The water is
running out”. Since the Bluetooth module can receive wireless data up to 20 meters, we can effectively
know when the plant is being watered and whether the water is running out so we can fill it regularly.

COMPONENTS LIST:
- Arduino Grove board (used to control the mechatronics used to water the plant)
- A water pump with a water outlet (pumps water and waters the plant)
- A plant (basil)
- Moisture sensor(senses the moisture level of the soil)
- Two 9V batteries (one to power up the Mosfet and one to power up the Arduino uno)
- A Mosfet (to control the pump)
- Arduino Uno (used for the monitor)
- Ultrasonic Sensor (measures how far the water has decreased from its initial (full) point)
- Bluetooth module (receive data from the moisture sensor and the ultrasonic sensor using MATLAB)
- I2C LCD display (display the message)


Since this project is an update of the minor project, it did not take that long. The monitor was
made by first paring the Bluetooth module to my laptop. Then connect it to the Arduino using
Arduino IDE. Then the Arduino Code was uploaded to the Arduino Uno.

The trial of this project was consistent. If 1 was working and 0 not working (on a working vs time
graph), the graph would look close to a horizontal line close to 1 because it worked pretty much
in the whole test.

This project can be used in the real world by many people around the world. I am Ethiopian
which is a country in east Africa. I see lots of people planting trees, vegetables and other plants
but due to the lack of watering and checking regularly, the plants die. This monitor and moisture
sensor can be used to avoid this problem since people can just do their job with the monitor
with them (of course with in 20 meter of the moisture sensor).

This project used a Bluetooth module to help see and check the state of the plant with out
physically being close to the plant. This project can be improved by using a WIFI module to help
avoid the distance barrier Bluetooth module has. It can also be improved by adding controlling
devices such as buttons, potentiometer etc.… to help us have full control over the plant. 
