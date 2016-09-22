%
% THIS FILE CONTAINS THE IMPLEMENTATION OF OBSTACLE DETECTION ALONG A LINE REQUIRED BY
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

function Collision = LineObstacleChecker(XCorner1,YCorner1,XCorner2,YCorner2,PathFlag,Orientation)

Collision = 0;
N = 5;
X = linspace(XCorner1,XCorner2,N);
Y = linspace(YCorner1,YCorner2,N);



for i = 1 : N
    if( IsThereAnObstacle(X(i),Y(i)) == 1 )
        Collision = 1;
        return;
    end
    if (PathFlag == 1)
        if(CheckCollisionDetection(X(i),Y(i),Orientation) == 1)
            Collision = 1;
            return;
        end
    end
    

end

end
     