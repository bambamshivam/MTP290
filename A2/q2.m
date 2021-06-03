getcondvals(3);
getcondvals(4);
getcondvals(5);
getcondvals(6);
function H=getcondvals(s)
    H=zeros(s);
    for i=1:s
        for j=1:s
            H(i,j)=1/(i+j-1); %getting H_s for size s
        end
    end
    disp(ronorm(H)*ronorm(inv(H))); % getting conditional number corresponding to diff norms
    disp(colnorm(H)*colnorm(inv(H)));
    disp(eucnorm(H)*eucnorm(inv(H)));
    % We observe that H_s is symmetric and so is inverse of H_s. Therefore
    % column sum and row sum comes out to be same and hence their max is
    % same so column norm and row norm are same and hence corresponding
    % conditional number is same for both the norms in all the cases.
    % Also in all the four cases conditional number corresponding to
    % euclidean norm is much greater than either
    % of the row or column norms.
end
function [n]=eucnorm(H)
    n=sqrt(sum(sum(H.*H))); %multiplying matrices element wise to get square and then applying sum twice and then sqrt to get euclidean norm
end
function [n]=colnorm(H)
    t=size(H,1);
    X=zeros(1,t);
    for i=1:t
        X(i)=sum(H(:,i)); %taking sums of columns of the matrix
    end
    n=max(X);% finding their max
end
function [n]=ronorm(H)
    t=size(H,1);
    X=zeros(t,1);
    for i=1:t
        X(i)=sum(H(i,:)); %taking sums of the rows of the matrix
    end
    n=max(X); %finding their max
end