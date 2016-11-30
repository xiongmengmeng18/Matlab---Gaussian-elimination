function y=Gaussian_Elimination(Matrix, SolutionsVector)
Matrix
n=size(Matrix);
for i=1:n(1)
    for j=1:n(2)
        if(j==1)
            FirstOne=Matrix(i,i);
            if (FirstOne~=0)
            SolutionsVector(i)=SolutionsVector(i)/FirstOne;
            else            %%%ten else jest dla pdkt b) i c)
                %Matrix=Gauss_czesciowywybor(Matrix,i)    %%tu jest pdkt b)
                [Matrix,SolutionsVector]=Gauss_pelnywywybor(Matrix,i,SolutionsVector);  %% a tu c)
                FirstOne=Matrix(i,i);

            end
        end
        Matrix(i,j)=Matrix(i,j)/FirstOne;

    end
    if(i<n(1))
        for a=1:i
            SolutionsVector(i+1)=SolutionsVector(i+1)-SolutionsVector(a)*Matrix(i+1,a);
            Matrix(i+1,:)=Matrix(i+1,:)-Matrix(a,:)*Matrix(i+1,a);
            
        end
    end
end
solvegauss(Matrix,SolutionsVector);

    