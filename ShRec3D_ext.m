function XYZ = ShRec3D_ext(matrix,alpha,method)

%--------------------------------------------------------------------------------------------
%	matrix = Hi-C matrix normalized
%	method ='classical' 	-> Classical MDS
%		'sammon'	-> Metric MDS with Sammon Stress
%		'metric'	-> Metric MDS
%		'nonmetric'	-> Non Metric MDS
%
%
%Exemple: XYZ = ShRec3DV2(HiC,'sammon') execute ShRec 3D with Sammon stress
%
%--------------------------------------------------------------------------------------------

tic;

%Shortest Path with Floyd Warshall
disp('Floyd-Warshall')
distSP = 1./(matrix.^alpha);

n = size(distSP, 1);	

for k=1:n

  i2k = repmat(distSP(:,k), 1, n);
  k2j = repmat(distSP(k,:), n, 1);

  distSP = min(distSP, i2k+k2j);

end

%Removing the diagonal
distSP = distSP - diag(diag(distSP));


%MDS
disp('Dimension Reduction')
switch method
    case 'classical'
        XYZ = cmdscale(distSP,3);
    case 'sammon'
        XYZ = mdscale(distSP,3, 'criterion','sammon');
    case 'metric'
        XYZ = mdscale(distSP,3, 'criterion','metricstress');
    case 'nonmetric'
        XYZ = mdscale(distSP,3, 'criterion','stress');
toc,

end