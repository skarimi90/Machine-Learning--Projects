function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
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



%c1 = find(idx == 1); 
%c2 = find(idx == 2);
%c3 = find(idx == 3);

%centroids(1,:) =[sum(X(c1,1))/size(c1,1) , sum(X(c1,2))/size(c1,1)];
%centroids(2,:) =[sum(X(c2,1))/size(c2,1) , sum(X(c2,2))/size(c2,1)];
%centroids(3,:) =[sum(X(c3,1))/size(c3,1) , sum(X(c3,2))/size(c3,1)];

% =============================================================

%for any value of k:
for i=1:K
   c_i = find(idx == i); 
   centroids(i,:) = sum(X(c_i,:))/size(c_i,1);
end


%============================================
%note that:

%b =

%   1   2
%   3   4

%octave> sum(b,1)=sum(b)
%ans =

%   4   6

%octave> sum(b,2)
%ans =

%   3
%   7
%=================================================


end

