%
% THIS FILE CONTAINS THE IMPLEMENTATION OF OBSTACLE DETECTION AT A GIVEN POINT REQUIRED BY
% KINODYNAMIC PROBABILISTIC ROADMAP (PRM) AND KINODYNAMIC RAPIDLY EXPLORING RANDOM TREES (RRT) 
%
% COPYRIGHT BELONGS TO THE AUTHOR OF THIS CODE
%
% AUTHOR : LAKSHMAN KUMAR
% AFFILIATION : UNIVERSITY OF MARYLAND, MARYLAND ROBOTICS CENTER
% EMAIL : LKUMAR93@UMD.EDU
% LINKEDIN : WWW.LINKEDIN.COM/IN/LAKSHMANKUMAR1993
%
% THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THE MIT LICENSE
% THE WORK IS PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW. ANY USE OF
% THE WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENSE OR COPYRIGHT LAW IS PROHIBITED.
% 
% BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND AGREE TO
% BE BOUND BY THE TERMS OF THIS LICENSE. THE LICENSOR GRANTS YOU THE RIGHTS
% CONTAINED HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND
% CONDITIONS.
%

function ObstacleDetection = IsThereAnObstacle(xq,yq)

x1 = [0 0 10 10];
y1 = [0 300 300 0];

x2 = [ 0 300 300 0];
y2= [ 300 300 290 290];


x3 = [ 290 300 300 290];
y3 = [ 300 300 0 0];

x4 = [ 300 0 0 300];
y4 = [  0 0 10 10];


x5 = [ 100 100 75 75];
y5 = [  100 75 75 100];



x6 = [ 125 225 235 135];
y6 = [  175 175 165 165];

in1 = inpolygon(xq,yq,x1,y1);
in2 = inpolygon(xq,yq,x2,y2);
in3 = inpolygon(xq,yq,x3,y3);
in4 = inpolygon(xq,yq,x4,y4);
in5 = inpolygon(xq,yq,x5,y5);
in6 = inpolygon(xq,yq,x6,y6);

ObstacleDetection = 0;

if in1 == 1 || in2 == 1 ||in3 == 1 || in4 == 1 || in5 == 1 || in6 == 1 
    ObstacleDetection = 1;
end    

end
