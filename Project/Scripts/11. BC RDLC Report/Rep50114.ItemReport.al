report 50114 "Item Report"
{
    ApplicationArea = All;
    Caption = 'Item Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Templates/Item Report.RDL';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(Item; Item)
        {
            column(Id; Id)
            {
            }
            column(NoofSubstitutes; "No. of Substitutes")
            {
            }
            column(Profit; "Profit %")
            {
            }
            column(PurchasesQty; "Purchases (Qty.)")
            {
            }
            column(UnitCost; "Unit Cost")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
