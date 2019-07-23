function output=genFunc(varargin)

for k=1:length(varargin)
    if ~isreal(varargin{k})
        disp('Please enter Real parameters');
        return
    end
    
end

if (length(varargin)>3) %|| (~isreal(varargin))
    disp('Please enter 3 or less parameters');
    return
end 

if length(varargin)==3
    a=varargin{1};
    b=varargin{2};
    c=varargin{3};
elseif length(varargin)==2
    a=varargin{1};
    b=varargin{2};
    c=0;
else
    a=varargin{1};
    b=0;
    c=0;       
end 

function y=evalFunc(x)
    y=a*x^2+b*x+c;          
end

output=@evalFunc;


end
