clear all; close all;


bt=Bluetooth('btspp://00140305098C',1);
fopen(bt);

a = arduino('COM7','uno', 'libraries', 'Ultrasonic');

UltrasonicSensor = ultrasonic(a,'A2','A3');

pumpPin = 'D2';
sensorPin = 'A0';
buzzerPin = 'D5';

DryState = 3.2893;

h = animatedline;
ax = gca;
ax.YGrid = 'on';
ax.YLim = [-0.1 5];
title('Moisture sensor voltage vs time (live)');
xlabel('Time [HH:MM:SS]');
ylabel('Voltage [volt]');
stop = false;
startTime = datetime('now');

while ~stop
    %********** Graph *******************
    voltage = readVoltage(a,'A0');
        t = datetime('now') - startTime;
        addpoints(h,datenum(t),voltage);
        ax.XLim = datenum([t-seconds(15) t]);
        datetick('x','keeplimits')
        drawnow
        stop = readDigitalPin(a,'D6');
        %**********************************

    if (voltage >= DryState)
        writeDigitalPin(a,pumpPin,1); % pumps water
        writePWMDutyCycle(a,buzzerPin, 0.33); % Gives signal that the plant is being watered
        pause(0.1);
        writePWMDutyCycle(a,buzzerPin, 0);
        disp("Soil is really dry. Watering...")
        fwrite(bt, 1);

    else
        writeDigitalPin(a,pumpPin,0); % the pump stops watering
        writePWMDutyCycle(a,buzzerPin, 0); % buzzer stops
        disp("Soil has been watered.")
        fwrite(bt,0);
    end
    disp(voltage);

    UltrasonicVal = readDistance(UltrasonicSensor);
    if (UltrasonicVal >= 14)
       fwrite(bt, 5);
    else
    end
end