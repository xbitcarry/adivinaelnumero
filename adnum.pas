program Adivina_Numero;
{$codepage UTF8}
Uses
	Crt;

Var
 	Contador, Seleccion, Numero : Integer;
	z : char;
	salir : boolean;

begin
	Clrscr;
	Writeln('Adivina el número!');
	Writeln;
	Writeln('He escogido un número entre el 0 y 100');
	Writeln('Adivina cuál es!!!');
	Writeln;
	Randomize;
	Numero := Random(100);
	Salir := False;
	Contador := 1;
	Repeat
		Write('Selección número ', Contador, ' : ');
		Readln(Seleccion);
		If Seleccion = Numero then 
		begin
			Writeln('Felicidades! Adivinaste cuál es!');
			Salir := True;
		end
		else
		begin
			If Seleccion > Numero then Writeln('Te pasaste!');
			If Seleccion < Numero then Writeln('Te falta!');
			If Contador <= 9 then Contador := Contador + 1 
			else 
			begin
				Salir := True;
				Writeln('Perdiste!');
			end;
		end;
	Until salir = True;
	z:=Readkey;
end.