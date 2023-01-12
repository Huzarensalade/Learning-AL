codeunit 50103 MyNewCodeunit
{
    trigger OnRun()
    begin
        num1 := 12;
        num2 := 13;
        add(num1, num2);
    end;

    procedure add(num1: Integer; num2: Integer)
    var
        tot: Integer;
    begin
        tot := num1 + num2;
        Message('The sum of %1 and %2 is %3', num1, num2, tot);
    end;

    var
        num1: Integer;
        num2: Integer;
}