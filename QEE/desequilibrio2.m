function y =desequilibrio2(fases)
	assert(iscomplex(fases))
	tensoes_linha= diff(fases); % mas falta uma
	tensoes_linha(3)=fases(3) -fases(1);
	beta=sum(tensoes_linha.^4)/(sum(tensoes_linha.^2).^2);
	deseq= (1- sqrt(3-6*beta)) / (1+ sqrt(3-6*beta));
	y=sqrt(deseq);
end
