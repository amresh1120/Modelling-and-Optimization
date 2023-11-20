clc, clear, close all




%%look at the benchmark file and you can see different functions to
%%choose from.





rng default
global initial_flag

%% GA with 15 iterations
initial_flag = 0;
options = optimoptions('ga');

for i=1:15
 initial_flag = 0;
 %Function 1, Dimension 2
 [F1D2, F1D2_Fitness, a, b] = ga(@(x)benchmark_func(x,1),2,options);
 F1D2_Collection(i) = F1D2_Fitness
end
for i=1:15
 initial_flag = 0;
 options = optimoptions('ga');
 %Function 1, Dimension 10
 [F1D10 ,F1D10_Fitness, a, b] =ga(@(x)benchmark_func(x,1),10,options);
 F1D10_Collection(i) = F1D10_Fitness
end
for i=1:15
 initial_flag = 0;
 %Function 6, Dimension 2
 [F6D2, F6D2_Fitness, a, b] = ga(@(x)benchmark_func(x,6),2,options);
 F6D2_Collection(i) = F6D2_Fitness
end
for i=1:15
 initial_flag = 0;
 options = optimoptions('ga');
 %Function 1, Dimension 10
 [F6D10 ,F6D10_Fitness, a, b] =ga(@(x)benchmark_func(x,6),10,options);
 F6D10_Collection(i) = F6D10_Fitness
end
for i = 1:15 
 initial_flag = 0;
 options = optimoptions('ga')
 %Func 11, Dim2
 [F11D2, F11D2_Fitness, a, b] = ga(@(x)benchmark_func(x,11),2,options);
 F11D2_Collection(i) = F11D2_Fitness
end
for i = 1:15
 initial_flag = 0;
 options = optimoptions('ga')
 %Function 11, Dim10
 [F11D10, F11D10_Fitness, a, b] =ga(@(x)benchmark_func(x,11),10,options);
 F11D10_Collection(i) = F11D10_Fitness
end
%% GA 15 iteration measures
%Function 1, Dim2
F1D2_max = max(F1D2_Collection)
F1D2_min = min(F1D2_Collection)
F1D2_mean = mean(F1D2_Collection)
F1D2_std = std(F1D2_Collection)

%Function 1, Dim10
F1D10_max = max(F1D10_Collection)
F1D10_min = min(F1D10_Collection)
F1D10_mean = mean(F1D10_Collection)
F1D10_std = std(F1D10_Collection)


%Function 6, Dim2
F6D2_max = max(F6D2_Collection)
F6D2_min = min(F6D2_Collection)
F6D2_mean = mean(F6D2_Collection)
F6D2_std = std(F6D2_Collection)

%Function 6, Dim10
F6D10_max = max(F6D10_Collection)
F6D10_min = min(F6D10_Collection)
F6D10_mean = mean(F6D10_Collection)
F6D10_std = std(F6D10_Collection)

%Function 11, Dim2
F11D2_max = max(F11D2_Collection)
F11D2_min = min(F11D2_Collection)
F11D2_mean = mean(F11D2_Collection)
F11D2_std = std(F11D2_Collection)

%Func 11, Dim10
F11D10_max = max(F11D10_Collection)
F11D10_min = min(F11D10_Collection)
F11D10_mean = mean(F11D10_Collection)
F11D10_std = std(F11D10_Collection)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Particle Swarm Optimization 15 Iterations
initial_flag = 0;
options = optimoptions('particleswarm');

for i=1:15
 initial_flag = 0;
 %Function 1, Dim2
 [F1D2, F1D2_Fitness, a, b] = particleswarm(@(x)benchmark_func(x,1),2,[-100, -100], [100,100],options);
 F1D2_Collection(i) = F1D2_Fitness
end
for i=1:15
 initial_flag = 0;
 options = optimoptions('particleswarm');
 %Function 1, Dim10
 [F1D10,F1D10Fitness, a, b] =particleswarm(@(x)benchmark_func(x,1),10,[-100, -100, -100, -100, -100, -100, -100, -100, -100, -100], [100,100,100,100,100,100,100,100,100,100],options);
 F1D10_Collection(i) = F1D10_Fitness
end


for i=1:15
 initial_flag = 0;
 %Function 6, Dim2
 [F6D2, F6D2_Fitness, a, b] = particleswarm(@(x)benchmark_func(x,6),2,[-100, -100], [100,100],options);
 F6D2_Collection(i) = F6D2_Fitness
end
for i=1:15
 initial_flag = 0;
 options = optimoptions('particleswarm');
 %Function 6, Dim10
 [F6D10,F6D10_Fitness, a, b] =particleswarm(@(x)benchmark_func(x,6),10,[-100, -100, -100, -100, -100, -100, -100, -100, -100, -100], [100,100,100,100,100,100,100,100,100,100],options);
 F6D10_Collection(i) = F6D10_Fitness
end


for i = 1:15 
 initial_flag = 0;
 options = optimoptions('particleswarm')
 %Function 11, Dim2
 [F11D2, F11D2_Fitness, a, b] = particleswarm(@(x)benchmark_func(x,11),2,[-5, -5], [5,5],options);
 F11D2_Collection(i) = F11D2_Fitness
end
for i = 1:15
 initial_flag = 0;
 options = optimoptions('particleswarm')
 %Function 11 , Dim10
 [F11D10, F11D10_Fitness, a, b] =particleswarm(@(x)benchmark_func(x,11),10,[-5, -5, -5, -5, -5, -5, -5, -5, -5, -5], [5,5,5,5,5,5,5,5,5,5],options);
 F11D10_Collection(i) = F11D10_Fitness
end
%% PS 15 iteration measures
%Function 1, Dim2
F1D2_max = max(F1D2_Collection)
F1D2_min = min(F1D2_Collection)
F1D2_mean = mean(F1D2_Collection)
F1D2_std = std(F1D2_Collection)

%Function 1, Dim10
F1D10_max = max(F1D10_Collection)
F1D10_min = min(F1D10_Collection)
F1D10_mean = mean(F1D10_Collection)
F1D10_std = std(F1D10_Collection)

%Function 6, Dim2
F6D2_max = max(F6D2_Collection)
F6D2_min = min(F6D2_Collection)
F6D2_mean = mean(F6D2_Collection)
F6D2_std = std(F6D2_Collection)

%Function 6, Dim10
F6D10_max = max(F6D10_Collection)
F6D10_min = min(F6D10_Collection)
F6D10_mean = mean(F6D10_Collection)
F6D10_std = std(F6D10_Collection)


%Function 11, Dim2
F11D2_max = max(F11D2_Collection)
F11D2_min = min(F11D2_Collection)
F11D2_mean = mean(F11D2_Collection)
F11D2_std = std(F11D2_Collection)

%Function 11, Dim10
F11D10_max = max(F11D10_Collection)
F11D10_min = min(F11D10_Collection)
F11D10_mean = mean(F11D10_Collection)
F11D10_std = std(F11D10_Collection)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


