d1 = 169.77;    a1 = 64.2;  alpha1 = -90*pi/180;    
d2 = 0;         a2 = 305;   alpha2 = 0;             
d3 = 0;         a3 = 0;     alpha3 = 90*pi/180;     
d4 = -222.63;   a4 = 0;     alpha4 = -90*pi/180;    
d5 = 0;         a5 = 0;     alpha5 = 90*pi/180;     
d6 = -36.25;    a6 = 0;     alpha6 = 0;  



L(1) = Prismatic('theta',0,'a',0,'alpha',0);
L(2) = Prismatic('theta',0*pi/180,'a',0,'alpha',0);
L(3) = Link([0 0 0 0], 'R');
L(4) = Link([0 d1 a1 alpha1], 'R');
L(5) = Link([0 d2 a2 alpha2], 'R');
L(6) = Link([0 d3 a3 alpha3], 'R');
L(7) = Link([0 d4 a4 alpha4], 'R');
L(8) = Link([0 d5 a5 alpha5], 'R');
L(9) = Link([0 d6 a6 alpha6], 'R');

Robot = SerialLink(L);

robotq = [0,0,0,0,0,0];
gvlocation = [0,0,0];

Robot.fkine([gvlocation, robotq])
ROMEFK([robotq, gvlocation])