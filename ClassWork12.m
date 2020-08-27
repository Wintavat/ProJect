Px = 6.75; 
Py = 2.95; 
Pz = 2.8;
D1 = 2; 
a2 = 4;
a3 = 6;
D = ((Px^2+Py^2)+(Pz-d1)^2-a2^2-a3^2)/(2*a2*a3)
Th2_a = atan2d( +(sqrt(1-D^2)),D )
Th2_b = atan2d( -(sqrt(1-D^2)),D )
Th2_c = atan2d( -(sqrt(1-D^2)),D )
L1 = link([0 D1 Th1_a 0, 0]);
L2 = link([0 a2 Th2_a 0, 0]);
L3 = link([0 a2 0 d1, 1]);
Twolinks_Robot = robot({L1 L2 L3});

T03 = fkine(Twolinks_Robot, [Th1_a*pi/180 Th2_c*pi/180 Th3_c*pi/180]);

P3_End = T03*[0;0;0;1]