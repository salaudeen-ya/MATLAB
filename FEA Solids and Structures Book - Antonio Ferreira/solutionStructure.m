% function to find the solution in terms of global displacements

function displacements = solutionStructure(p)
activeDof = setdiff([1:p.GDof]', [p.prescribedDof]);
U = p.stiffness(activeDof,activeDof)\p.force(activeDof);
displacements = zeros(p.GDof,1);
displacements(activeDof) = U;
