function xoverKids  = int_crossoverarithmetic(parents,options,GenomeLength,...
    ~,~,thisPopulation)

%IntCon constraints
IntCon = evalin('base', 'IntCon');
xoverKids = innerInt_crossoverarithmetic_mex(parents, options.PopInitRange, GenomeLength, thisPopulation, IntCon);