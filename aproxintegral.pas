program aproxintegral;
	 
var
	linf, lsup: real;
	i, n: integer;
	base, altr, altt: real;

function f(x:real):real;
	begin
		f:= x*x; // función de la que queremos obtener el área
	end;

function trapezoides (a,b:real; n:integer):real; // a y b son linf y lsup respectivamente
	begin
		base:=(b-a)/n; // base de cada trapecio que vamos a crear
		trapezoides:=0;
		for i:=1 to n do
			begin
				altr:= f(a+(base*(i-1))); // coge siempre la altura del extremo izquierdo del trapecio
				altt:= abs(f(a+base*i)-f(a+(base*(i-1)))); // coge la altura del extremo derecho en este caso
				trapezoides:= base*altr + (base*altt)/2 + trapezoides; // el área del rectangulo más el área del triángulo
			end;
	end;

BEGIN
	writeln('Introduzca el número de divisiones de los trapecios:');
	readln(n);
	writeln('Introduzca los límites inferior y superior respectivamente:');
	readln(linf, lsup);
	writeln(trapezoides(linf, lsup, n)); // escribe el resultado final
END.

