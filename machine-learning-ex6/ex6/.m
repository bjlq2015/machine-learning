c_set=[0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
sigma_set=[0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
minmean=1*10^20;
for i=1:length(c_set)
	for j=i=1:length(sigma_set)
		c_temp=c_set(i);
		sigma_temp=sigma_set(j);
		[model] = svmTrain(X, y, C, gaussianKernel);
		predictions = svmPredict(model, Xval);
		if mean(double(predictions ~= yval))<minmean
			minmean=mean(double(predictions ~= yval));
			c_num=i;
			sigma_num=j;
		end
	end
end
C=c_set(i)
sigma=sigma_set(j)
