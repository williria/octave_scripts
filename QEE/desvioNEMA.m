function y = desvioNEMA(amplitudes)
	tensoes = abs(amplitudes)
	% metodo de calculo de desvio segundo NEMA
	y = (max(tensoes)/mean(tensoes) )*100;
end
