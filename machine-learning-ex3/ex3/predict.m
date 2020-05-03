function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
x_1 = [ones(m, 1) X];
x_2 = x_1*Theta1';
x_2 = (1+exp(-x_2)).^-1;
x_2 = [ones(m, 1) x_2];
x_3 = x_2*Theta2';
x_3 = (1+exp(-x_3)).^-1;
p=ones(m,1);
for j=1:m
	for i=1:num_labels
		if x_3(j,i)>x_3(j,p(j))
			p(j)=i;
		end
	end
end







% =========================================================================


end
