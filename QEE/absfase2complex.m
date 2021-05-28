function y= absfase2complex(modulo,angulo)
	% essa funcao converte um modulo e angulo para numero complexo
	tmp = pol2cart(angulo,modulo);
	y = complex(tmp(1), tmp(2));
end

%!assert (absfase2complex(1,0)==(1+0i))
%!