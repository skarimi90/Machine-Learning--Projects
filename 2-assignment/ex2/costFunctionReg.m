function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

n=size(theta,1);
hypothesis = sigmoid(X*theta);

J=sum(-y .* log(hypothesis) - (1-y) .* log(1 - hypothesis) )/m 

for i= 2:n
   J=J+ (lambda/(2*m))*(theta(i)^2);
end


for i= 1:m
% hypothesis = mx1 column vector
% y = mx1 column vector
    grad(1)=grad(1)+ ( hypothesis(i)-y(i) ) * X(i,1);
end
    grad(1)=grad(1)/m;


for j=2:n

for  i=1:m

     grad(j)=grad(j)+( hypothesis(i)-y(i) ) * X(i,j);
end;
     grad(j)=grad(j)/m + (lambda/m)*theta(j);
end

% =============================================================

%alternative way:


%temp1 = -1 * (y .* log(sigmoid(X * theta)));
%temp2 = (1 - y) .* log(1 - sigmoid(X * theta));

%thetaT = theta;
%thetaT(1) = 0;
%correction = sum(thetaT .^ 2) * (lambda / (2 * m));

%J = sum(temp1 - temp2) / m + correction;

%grad = (X' * (sigmoid(X * theta) - y)) * (1/m) + thetaT * (lambda / m);

end
