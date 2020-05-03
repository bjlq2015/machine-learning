function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
num_of_each_centroid=zeros(K);
for i=1:length(idx)
	centroids(idx(i),:)=centroids(idx(i),:)+X(i,:);
	num_of_each_centroid(idx(i))=num_of_each_centroid(idx(i))+1;
end
i=1;
while i<=K
	if num_of_each_centroid(i)
		centroids(i,:)=centroids(i,:)/num_of_each_centroid(i);
		i=i+1;
	else
		num_of_each_centroid(i)=[];
		centroids([i],:)=[];
		K=K-1;
	end
end







% =============================================================


end

