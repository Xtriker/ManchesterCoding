%% Comentarios %%
%% Código Machester %%
%prompt = 'Ingresa una palabra: ';
%a = input(prompt,'s');
%x = dec2bin(toascii(a))
x = [1 1 0 0 0 0 1] %h
  T = length(x);
  n = 100;
  N = 2*n*T;
  dt = T/N;
  t = 0:dt:T;
  y = zeros(1,length(x));
  %% Recorriendo los datos %%

  for i=0:1:(T-1)
    if x(i+1) == 1 
        y(i*2*n+1:(2*i+1)*n)=-1; %% Si es 0 envia un -1 %%
        y((i*2+1)*n+1:(2*i+2)*n)=1;
    else
        y(i*2*n+1:(2*i+1)*n)=1;
        y((i*2+1)*n+1:(2*i+2)*n)=-1; 
    end
  end
plot(y)
title("Código Machester")