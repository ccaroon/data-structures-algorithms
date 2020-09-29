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

    if (input >= 0) and (input <= 170) then
        begin;
            result := Factorial(input);
            writeln(input, '! = ', result:1:0);
        end
    else
        writeln('Sorry! Can''t compute !',input);
end.
