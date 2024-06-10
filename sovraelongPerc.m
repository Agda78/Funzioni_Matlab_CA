function z = sovraelongPerc(k)

if nargin >=1
    z = -log(k ./ 100) ./ sqrt(pi^2 + (log(k ./ 100)).^2);
else
    x = 0:0.01:1;
    y = exp(-pi*x ./ sqrt(1 - x.^2)) * 100;
    plot(x,y);
    grid on;
end
end