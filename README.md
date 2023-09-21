# Plant-monitoring-and-watering-system-v2
This a project about a plant watering system built by using an Arduino grove
board and MATLAB. 

The objective of this project is to water a plant whenever a
moisture the soil is dry and stop watering when the soil has been watered. 

To read the moisture level of the soil of the plant, a moisture sensor was required, and it
needed to be plugged in to the soil while the other end was plugged to the grove board. The
pump needed to be connected to a Mosfet that was connected to a 9V battery. The Mosfet was
then connected to the grove board. The pump was put in a plastic container full of water. The
moisture level was then plotted on a live-updating graph

MATLAB was used to program the commands each component (moisture sensor and pump) into an Arduino grove
board. Whenever the moisture sensor detects the soil moisture, the pump acts accordingly.
After doing a couple of experiments, it was found that the soil is dry when the moisture level is
around 3.2893 and the soil is water-saturated when the moisture level is 2.8592. This meant
the pump pumps water whenever the moisture sensor reads 3.2893 or more.

The plant was watered whenever it was dry (the moisture sensor senses values higher than or equal
to 3.2893). When the value of the moisture sensor is less than 3.2893 the pump stops watering
meaning the soil is saturated/wet. 

Since, the moisture of the soil needed to be measured every time, a while loop was required. Using a
buzzer as a signal is a good thing because it lets us know when the plant is being watered.
