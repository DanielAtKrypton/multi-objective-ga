function mutationChildren = innerInt_mutation(parents, Generation, Generations, PopInitRange, GenomeLength, IntCon)
%INNERINT_MUTATION Summary of this function goes here
%   Detailed explanation goes here
% Function that creates the mutated children using the Gaussian
% distribution. It does not satisfy linear constraints!
shrink = 0.01; 
scale = 1;
scale = scale - shrink * scale * Generation/Generations;
range = PopInitRange;
lower = range(1,:);
upper = range(2,:);
scale = scale * (upper - lower);
mutationPop =  length(parents);

mutationChildren =  repmat(lower,mutationPop,1) +  ...
    repmat(scale, mutationPop,1) .* rand(mutationPop, GenomeLength);

x = rand;
if x>=0.5
    mutationChildren(:, IntCon) = floor(mutationChildren(:,IntCon));
else
    mutationChildren(:, IntCon) = ceil(mutationChildren(:,IntCon));
end

mutationChildren = checkboundsIntGA(mutationChildren, range);

