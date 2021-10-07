%this is a test of the parfor impact on the execution of a program

profile clear % limpa dados anteriores

arr=rand(1,10e4); %dados aleatorios

function i=with_parfor(in) % for com parallelismo, ainda nao implementado no octave

	parfor i=1:length(in)
		in(i)=in(i)*20;
	end
end


function i=without_parfor(in) % for comum

	for i=1:length(in)
		in(i)=in(i)*20;
	end
end

function i=with_vec(in) % funcao vetorizada implicitamente

	in=in*20;
end

profile on; % inicio de gravacao

with_vec(arr);
with_parfor(arr);
without_parfor(arr);
without_parfor(arr);
with_parfor(arr);
with_vec(arr);

profile off; % fim

res = profile("info");
profshow(res) % mostra resultados

