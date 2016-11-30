function y=wyznacznik(Matrix)
n=size(Matrix);
y=det(Matrix)
wyznacz=1;
for i=1:n(1)
    for j=1:n(2)
        if(j==1)
            FirstOne=Matrix(i,i);
            if (FirstOne~=0)
            else            %%%ten else jest dla pdkt b) i c)
                %Matrix=Gauss_czesciowywybor(Matrix,i)    %%tu jest pdkt b)
                [Matrix,SolutionsVector]=Gauss_pelnywywybor(Matrix,i,SolutionsVector);  %% a tu c)
                FirstOne=Matrix(i,i);

            end
        end
        Matrix(i,j)=Matrix(i,j)/FirstOne;

    end
    wyznacz=wyznacz*FirstOne;
    if(i<n(1))
        for a=1:i
            Matrix(i+1,:)=Matrix(i+1,:)-Matrix(a,:)*Matrix(i+1,a);
            
        end
    end
end
Matrix
wyznacz=wyznacz*(Matrix(n(1),n(2))*Matrix(n(1)-1,n(2)-1)*Matrix(n(1)-2,n(2)-2))+(Matrix(n(1)-1,n(2))*Matrix(n(1)-2,n(2)-1)*Matrix(n(1),n(2)-2))+(Matrix(n(1)-1,n(2)-2)*Matrix(n(1),n(2)-1)*Matrix(n(1)-2,n(1)))-(Matrix(n(1),n(2)-2)*Matrix(n(1)-1,n(2)-1)*Matrix(n(1)-2,n(2)))-(Matrix(n(1)-2,n(2)-2)*Matrix(n(1),n(2)-1)*Matrix(n(1)-1,n(2)))-(Matrix(n(1)-1,n(2)-2)*Matrix(n(1)-2,n(2)-1)*Matrix(n(1),n(2)))



