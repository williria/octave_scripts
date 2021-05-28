function m = sequencia2fase(seq)
	%% estafuncao converte um conjunto de compenentes simetricas nos fasores
	% originais
				ar= pol2cart( deg2rad(120),1);
				a= complex(ar(1),ar(2));
				operador= [ 1 1 1;
									1 a^2 a;
									1 a a^2];
				m = fases*operador;
end