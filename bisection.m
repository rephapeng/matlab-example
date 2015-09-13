%running 
%octave in same path folder with this file
%then call func ex( Xs = bisection(@(x) x-2*exp(-x),0,1))

function Xs = bisection(func,a,b)

%funct declaration
fa = func(a);
fb = func(b);

t = 0.000001; %tolransi
i = 0;			%iteration
if fa*fb > 0 
    disp('error message') %diisi terserah koe ya ;
else 
    disp ( 'iteration       a     	  b    	(xNS)solution    f(xNS)   Tolerance');
    while i<30
	i=i+1;
        xNS = (a+b)/2;           %numeric solution
        CT = (b-a)/2;            %current tollerantion
        FxNS = func(xNS);        %calculate value of iteration
        fprintf('%3i %15.6f %11.6f %11.6f %11.6f %11.6f\n', i, a, b, xNS , FxNS , CT)
        if FxNS == 0 
            disp("stop programe");   %stop programe if f(x) = 0
            break
        end
	if CT < t
	    break 			%stop programe if current itteration smaller than desire tolerance
	end
        if func(a)*FxNS < 0
            b = xNS;
        else 
            a = xNS;
        end
    end
end



