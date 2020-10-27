function [H_sym] = appr_matrix(N)

d = rand(N,1);
t = triu((bsxfun(@min,d,d.')).*rand(N),1);
H_sym = diag(d)+t+t.'; 

end

% e.g (N=2)
% -------------------------------------------------- 
% if N==1
%     H_sym = [0.3804, 0.2019; 0.2019 0.5678];
% elseif N==2
%     H_sym = [0.9340, 0.0015; 0.0015, 0.1299];
% end
% -------------------------------------------------- 