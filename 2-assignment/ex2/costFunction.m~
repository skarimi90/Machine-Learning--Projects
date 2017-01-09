function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% in ex2.m we have added one column of ones which is the intercept term to the X by the following commmand:
% X = [ones(m, 1) X];

hypothesis = sigmoid(X*theta);

J=sum(-y .* log(hypothesis) - (1-y) .* log(1 - hypothesis) )/m;

%Alternative way:
%for i= 1:m
% hypothesis = mx1 column vector
% y = mx1 column vector
%    grad=grad+ ( hypothesis(i)-y(i) ) * X(i,:)';
%end 
%grad= grad/m;
% we have produced grad(1)(which corresponds to theta_0) and grad(2) and grad(3).

%--------------------------------------------------------------------------------------------
% X'  dimention is 3x100, where the first row elements are ones, the second row is data for
%exam1 and the third row is data for exam2. Each row has 100 elements, which represents 100 people who took the test.
%  (hypothesis-y)  dimention is 100x1. 

% 3x100 * 100x1 --->3x1(where (1,1) --> grad(J_0)  ,(2,1) --> grad(J_1), (3,1)--> grad(J_2) ) 

grad =(X' * (hypothesis-y))/m


% =============================================================

end
