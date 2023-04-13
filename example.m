

spatial_freq = 0.5; % spatial frequency cyc/deg
angle_deg = 0; % orientation in deg
phase = 0; % grating phase in rad

% monitor specs
params.sz.width = 12; % width of image in cm
params.sz.height = 12;  % height of image in cm
params.res.width = 601; % width resolution of image in pxl
params.res.height = 601; % height resolution of image in pxl
params.vdist = 57; % visual distance in cm
config = visang(params);

[x,y] = meshgrid(-300:300,-300:300);

fr = spatial_freq*config.width.degperpix*2*pi % cycles for pixel
angle_rad=angle_deg * pi / 180; 

m = sin( (cos(angle_rad)*fr) *x + (sin(angle_rad)*fr) * y + phase);



imagesc(m)