function Matrix=Gauss_czesciowywybor(Matrix,x)
Matrix;

max=Matrix(x,1);
help=1;
    for i=1:length(Matrix(x,:))
        if (Matrix(x,i)>max)
            max=Matrix(x,i);
            help=i;
        end
    end

help2(:,1)=Matrix(:,x);
Matrix(:,x)=Matrix(:,help);
Matrix(:,help)=help2(:,1);
Matrix;
return ;