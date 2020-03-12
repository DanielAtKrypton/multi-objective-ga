function Population = int_pop(GenomeLength, ~, options)
% INT_POP Function that creates an initial population satisfying bounds and
% integer constraints
% Load IntCon constraints.
IntCon = evalin('base', 'IntCon');
Population = innerInt_pop_mex(options.PopulationSize, options.PopInitRange, GenomeLength, IntCon);