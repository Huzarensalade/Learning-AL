page 50106 Arithmetic
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Arithmetic Operators';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Enter the values';

                field(value1; value1)
                {
                    ApplicationArea = All;
                }

                field(value2; value2)
                {
                    ApplicationArea = All;
                }
            }

            group(Output)
            {
                Caption = 'Your ouput is:';

                field(_sum; _sum)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(dif; dif)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(prod; prod)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(quo; quo)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(divint; divint)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(_mod; _mod)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute the program.';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    _sum := value1 + value2;
                    dif := value1 - value2;
                    prod := value1 * value2;
                    quo := value1 / value2;
                    divint := value1 DIV value2;
                    _mod := value1 MOD value2;
                end;
            }
        }
    }

    var
        value1: Integer;
        value2: Integer;
        _sum: Integer;
        dif: Integer;
        prod: Integer;
        quo: Integer;
        divint: integer;
        _mod: Decimal;
}