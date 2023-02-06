page 50105 getset
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(getset)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    MyCode.Run();
                end;
            }
        }
    }

    var
        MyCode: Codeunit getset;
}