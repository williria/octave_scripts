function [y,pos] = fault_detector(onda,tempo,amp,f)
	%% retorna o ponto em que houve a falta
	% entradas:
	% onda: vetor do sinal
	% tempo: vetor de tempo
	% amp: amplitude so sinal normal
	% f: frequencia do sinal
	% fs: frequencia de amostragem
	% calcula se ha fenomeno
	fs=1/(tempo(2)-tempo(1));
	max_deriv = amp*2*pi*f/fs*1.1; %maxima derivada em regime normal
	d = abs(diff(onda));
	if max( d ) > max_deriv % ocorreu falta
		% localiza o ponto de maxima derivada
		[amp,pos] = max( diff(onda));
		y = tempo(pos);
	else
		y = nan;
		pos= nan;
	end
end
