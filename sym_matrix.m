function [H_i] = sym_matrix(N,i)

d = zeros(N,i);
for j = 1:i
    d(:,j) = rand(N,1);
    t = triu((bsxfun(@min,d(:,j),d(:,j).')).*rand(N),1);
    H_i = diag(d(:,j))+t+t.'; 
end
end