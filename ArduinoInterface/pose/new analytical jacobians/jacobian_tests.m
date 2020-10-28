d1 = 169.77;    a1 = 64.2;  alpha1 = -90*pi/180;    
d2 = 0;         a2 = 305;   alpha2 = 0;             
d3 = 0;         a3 = 0;     alpha3 = 90*pi/180;     
d4 = -222.63;   a4 = 0;     alpha4 = -90*pi/180;    
d5 = 0;         a5 = 0;     alpha5 = 90*pi/180;     
d6 = -36.25;    a6 = 0;     alpha6 = 0; 

L(1) = Link([0 d1 a1 alpha1], 'R');
L(2) = Link([0 d2 a2 alpha2], 'R');
L(3) = Link([0 d3 a3 alpha3], 'R');
L(4) = Link([0 d4 a4 alpha4], 'R');
L(5) = Link([0 d5 a5 alpha5], 'R');
L(6) = Link([0 d6 a6 alpha6], 'R');
global Robot
Robot = SerialLink(L);



theta0=[0;-1.396263401595464;1.570796326794897;0;0;0];
% J_analytic_new = Jacobian0_anal(theta0)
J = AR2Jacobiantool(theta0, Robot)
Jac1 = Jacobian0(theta0)
theta0=[.12323;-.396263401595464;.570796326794897;.7567;-2.3231324;3.75467];


% J_analytic_new = Jacobian0_anal(theta0)
J = AR2Jacobiantool(theta0, Robot)
Jac1 = Jacobian0(theta0)
% J_analytic_old = JacobionAR2(theta0)