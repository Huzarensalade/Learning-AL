pageextension 50102 recxrec extends "Contact Card"
{
    trigger OnOpenPage()
    begin
        Message('On open page (Before modify), the adress is %1', Rec.Address);
    end;

    trigger OnModifyRecord(): Boolean
    begin
        Message('On modify, the adress is %1', Rec.Address);
        Message('On modify, the previous adress is %1', xRec.Address);
    end;
}