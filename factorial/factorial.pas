{ Factorial in Pascal}
program ComputeFactorial(input, output);

{ ---------------------------------------------------------------------------- }
{ Function & Procedures }
{ ---------------------------------------------------------------------------- }
{ Compute Factorial Recursively }
function Factorial(n: integer): double;
begin
    if (n = 0) or (n = 1) then
        Factorial := 1
    else
        Factorial := n * Factorial(n - 1)
end;
{ ---------------------------------------------------------------------------- }

{ -------------------------------- Main -------------------------------------- }
var input: integer;
var result: double;
begin
    writeln('** Compute Factorial **');
    write('Enter An Integer: ');
    readln(input);

    if input > 170 then
        writeln('Sorry, ', input, '! ',
                'is a *really* big number. I can''t compute that. :(')
    else
        begin;
            result := Factorial(input);
            writeln(input, '! = ', result:1:0);
        end;
end.
