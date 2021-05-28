function y = onda2fasor(onda, pos)
	%% essa funcao calcula o fasor em determinada amostra
	%% para que possa funcionar e preciso que a onda apresente pelo menos
	%%	1 ciclo completo
	%% momento em que esta a 90 graus
	amp = max(onda);
	% calculo de derivada
	
	d = diff(onda);
	d =[d(1); d]; % same size again
	
	a = sqrt(amp.*amp-onda.*onda).*sign(d);
	b = onda;
	y = a+b*i;
	% condicao em terceiro e quarto quadrante
	
end

%!test 
%! s = sinetone(1,100,2,5);
%! res = onda2fasor(s);
%! assert(iscomplex(res))

