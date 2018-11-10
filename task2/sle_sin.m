function [matr] = sle_sin(nodes)
    xEq = nodes;
    yEq = sin(nodes)';
    numNodes = length(xEq);
    pols = zeros(numNodes, numNodes);
    for i = 1:numNodes
        for j = 1:numNodes
            pols(i, j) = xEq(i)^(j-1);
        end
    end
    matr = (pols\yEq)';
end

