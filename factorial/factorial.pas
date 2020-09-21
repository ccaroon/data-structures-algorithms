{ Factorial in Pascal}
program ComputeFactorial(input, output);

{ ---------------------------------------------------------------------------- }
{ Function & Procedures }
{ ---------------------------------------------------------------------------- }
function Factorial(n: integer): uint64;
begin
    if n = 0 then
        Factorial := 1
    else
        Factorial := n * Factorial(n - 1)
end;
{ ---------------------------------------------------------------------------- }

{ -------------------------------- Main -------------------------------------- }
var input: integer;
var result: uint64;
begin
    writeln('** Compute Factorial **');
    write('Enter An Integer: ');
    readln(input);

    if input > 20 then
        writeln('Sorry, ', input, '! ',
                'is a *really* big number. I can''t compute that. :(')
    else
        begin;
            result := Factorial(input);
            writeln(input, '! = ', result);
        end;
end.
