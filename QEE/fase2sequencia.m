function m = fase2sequencia(fases)
	%% esta funcao transforma fasores para suas componentes simetricas
				ar= pol2cart( deg2rad(120),1);
				a= complex(ar(1),ar(2));
				operador= 1/3*[ 1 1 1;
									1 a a^2;
									1 a^2 a];
				m = fases*operador;
end

%!test 