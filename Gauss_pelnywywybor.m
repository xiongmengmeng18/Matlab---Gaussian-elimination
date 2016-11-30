function [Matrix,SolutionsVector]=Gauss_pelnywywybor(Matrix,x,SolutionsVector)
Matrix;
n=size(Matrix);
max=Matrix(1,1);
helpi=1;
helpj=1;
for i=1:n(1)
    for j=1:n(2)
        if (Matrix(i,j)>max)
            max=Matrix(x,i);
            helpi=i;
            helpj=j;
        end
    end
end
    
help2=Matrix(:,x);
Matrix(:,x)=Matrix(:,helpj);
Matrix(:,helpj)=help2;


SolutionsVector;

Matrix;
help1=SolutionsVector(x);
SolutionsVector(x)=SolutionsVector(helpi);
SolutionsVector(helpi)=help1;
help2=Matrix(x,:);
Matrix(x,:)=Matrix(helpi,:);
Matrix(helpi,:)=help2;

%SolutionsVector
%Matrix


return;

end