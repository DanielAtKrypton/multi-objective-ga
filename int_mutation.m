function mutationChildren = int_mutation(parents, options, GenomeLength, ...
    ~, state, ~, ~)

% Function that creates the mutated children using the Gaussian
% distribution. It does not satisfy linear constraints!

%IntCon constraints
IntCon = evalin('base', 'IntCon');
mutationChildren = innerInt_mutation_mex(parents, state.Generation, options.Generations, options.PopInitRange, GenomeLength, IntCon);
