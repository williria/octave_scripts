function y = desvioIEEE(amplitudes)
	% metodo de calculo de desvio segundo IEEE
	tensoes = abs(amplitudes)
	y = 3*(max(tensoes) -min(tensoes) )/(sum(tensoes ))*100;

end
