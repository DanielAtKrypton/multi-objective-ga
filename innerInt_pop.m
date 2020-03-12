function Population = innerInt_pop(PopulationSize, PopInitRange, GenomeLength, IntCon)
%INNERINT_POP Summary of this function goes here
%   Detailed explanation goes here
totalPopulation = sum(PopulationSize);

range = PopInitRange;
lower = range(1,:);
span =  range(2,:) - lower;


Population = repmat(lower,totalPopulation,1 )+  ...
    repmat(span,totalPopulation,1) .* rand(totalPopulation, GenomeLength);

x = rand;
if x>=0.5
    Population(:,IntCon) = floor(Population(:, IntCon));
else
    Population(:,IntCon) = ceil(Population(:, IntCon));
end
Population = checkboundsIntGA(Population, range);
Population = checkConstraintsViolation(Population, constraint(Population) > 0);