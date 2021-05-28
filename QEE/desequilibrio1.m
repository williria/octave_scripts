function y = desequilibrio1(fases)
	% o calculo e seg_negativa/seq_ppositiva*100
	sequencias = faseParaSequencia(fases);
	sequencias = abs(sequencias);
	y = sequencias(3)/ sequencias(2) *100;
end
