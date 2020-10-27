function [H_sym] = appr_matrix(N)

d = rand(N,1);
t = triu((bsxfun(@min,d,d.')).*rand(N),1);
H_sym = diag(d)+t+t.'; 

end
