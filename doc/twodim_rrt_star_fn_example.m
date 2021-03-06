%% RRT*FN for 2D Mobile Robot
% 
% <html><body><table style="border: 2px solid orange;"><tr>
% <td style="font-size:12pt;">Do not change anything in rrt.m,
% rrt_star.m and rrt_star_fn.m
% </td></tr></table></body></html>
% 

%% Getting started
% Create *main_2d_mobile_rrt_star_fn.m* file. You can create m-file with any other name, that is
% perfectly okay, this will not affect to the solution of a path/motion
% planning problem. All the sources could be found in examples/ directory
% of the distribution.
%

%% Step 1: Choosing the map 
% Firstly, we should define what map to use. It is done by defining map
% structure the sample code is goes after.
%
%   map = struct('name', 'bench_june1.mat', 'start_point', [-12.5 -5.5], 'goal_point', [7 -3.65]);
%

%%
%
% * *name field* defines the file name in maps/ directory
% * *start_point* field defines where the initial point of the problem
% * *goal_point* field define where is the goal point on the map
%

%% Step 2: Setting maximum number of iterations
%
%   max_iter = 20e3;
%
% * *max_iter* variable defines how much iteration should be done to solve
% the path planning problem.

%% Step 3: Setting maximum nodes in the tree
%
%   max_nodes = 5e3;
%
% * *max_nodes* variable defines how many nodes should be stored in the
% tree.


%% Step 4: Do we have to benchmark 
%
%   is_benchmark = false;
%
% * *is_benchmark* enables benchmarking. For more details please read the
% sources of rrt.m, rrt_star.m and rrt_star_fn.m

%% Step 5: Setting random seed
%
%   rand_seed = 40;
%
% * *rand_seed* variable is a random seed for random number generator, it
% is used for sampling nodes. It is usually used for benchmarking. We set
% the same map, however the random seed is different for the same map. You
% can use *now* if you don't care about random seed.
%
%   rand_seed = now;
%

%% Step 6: Choosing the class (model) we want 
% 
%   variant = 'FNSimple2D';
%
% * *variant* defines from what class we should instantiate the object. In
% other words it defines what model we choose for application of RRT.
%
% *FNSimple2D* is a name of a class which contains all necessary methods
% and fields in order to represent simple 2D Mobile Robot model.

%% Step 7: RRT*FN
%
%   rrt_star_fn(map, max_iter, max_nodes, is_benchmark, rand_seed, variant);
%
% Line above runs RRT with given parameters. In addition, *rrt* function
% returns the class object with a certain solution.

%% Sources of *main_2d_mobile_rrt_star_fn.m*
% Press 
% <matlab:edit('examples/main_2d_mobile_rrt_star_fn.m') here>
% to play with example code.
%
%   % 2D mobile robot example.
%   % by Olzhas Adiyatov 
%   % 08/28/2013
%   
%   map = struct('name', 'bench_june1.mat', 'start_point', [-12.5 -5.5], 'goal_point', [7 -3.65]);
%   max_iter = 20e3;
%   max_nodes = 3e3;
%   is_benchmark = false;
%   rand_seed = 40;
%   variant = 'FNSimple2D';
%   result = rrt_star_fn(map, max_iter, max_nodes, is_benchmark, rand_seed, variant);
%
