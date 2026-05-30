load A2Data.mat;


%% Determining coherent bandwidth

%convert pvec into non db
pvec_pow = 10.^(pvec/10);

%delay spread
tau = (sum(pvec_pow .* (tvec * 1e-9))) / sum(pvec_pow);
ave_tau_square = (sum((pvec_pow .* (tvec * 1e-9).^2)) / sum(pvec_pow));

%rms delay spread
delay_spread = sqrt(ave_tau_square - (tau)^2);

%20 nano sec delay spread

% Coherent bandwidth
band_c = 1/(5*delay_spread); % 9.5MHz >> subcar freq 240Khz


