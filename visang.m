function [config]=visang(params)
% Monitor calibration
%[config]=visang2(params)
% INPUT visang for W & H
% params.sz.width=cm
% params.sz.height=cm
% params.res.width=pxl
% params.res.height=pxl
% params.vdist=cm
%
% config.width.pix
% config.width.degperpix
% config.width.pixperdeg
% config.height.pix
% config.height.degperpix
% config.height.pixperdeg
% 
% this is W
config.width.pix=params.sz.width/params.res.width; %size of a pixel in cm
config.width.degperpix=(2*atan(config.width.pix./(2*params.vdist))).*(180/pi);
config.width.pixperdeg=1./config.width.degperpix;
% this is H
config.height.pix=params.sz.height/params.res.height; %size of a pixel
config.height.degperpix=(2*atan(config.height.pix./(2*params.vdist))).*(180/pi);
config.height.pixperdeg=1./config.height.degperpix;

end