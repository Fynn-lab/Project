load A2Data.mat;

%convert pvec into non db
pvec_pow = 10.^(pvec/10);
tau = (pvec_pow .* (tvec * 1e-9)) / sum(pvec_pow);
sum_tau = sum(tau);
ave_tau = sum((pvec_pow * sum_tau^2) / sum(pvec_pow));
rms_tau = sqrt(ave_tau^2 - (ave_tau)^2)