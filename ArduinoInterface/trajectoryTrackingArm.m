function [path] = trajectoryTrackingArm(path,Stepper1)
% This function takes a path, specified as 6 angle states followed by six
% angular velocity states (rad,rad/s) for each joint. 
% Stepper1 is a stepper motor object for one of
% the joints on the arm.

pause(5);

%Main Loop
index = 1;
tic;
while(toc <= path(end,1))
    if (toc >= path(index,1))
                
        statesArray = [path(index,2),path(index,3),path(index,4)...
                       path(index,5),path(index,6),path(index,7)...
                       path(index,8),path(index,9),path(index,10)...
                       path(index,11),path(index,12),path(index,13)];       
        Stepper1.setStates(statesArray);
        index = index + 1;
    end
end

%Set steppers back to zero
Stepper1.setStates([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]);

end

