function mapping(x,y)
if(x=='a'||x=='A')
    t=linspace(0,2*pi,200);
    z=cos(t)+1i*sin(t);
elseif(x=='b'||x=='B')
    t=linspace(0,1,200);
    z=1*(1-t)+(1+1i)*(t);
end

if(y=='a'||y=='A')
    w=z.^2+(1+1i)*z-3;
elseif(y=='b'||y=='B')
   w=1i*z.^3+z-1i;
elseif(y=='c'||y=='C')
    w=z.^4+z;
elseif(y=='d'||y=='D')
    w=z.^3-conj(z);
end

figure
subplot(1,2,1);
    plot(real(z),imag(z));
     ylabel('Imaginary axis')
   xlabel('Real axis')
    title('The set S in the z-plane');
    axis('square');
    grid;
    
    subplot(1,2,2);
    plot(real(w),imag(w));
    ylabel('Imaginary axis')
    xlabel('Real axis')
    title('The image of S in the w-plane')
    axis('square');
    grid;


end
%commet