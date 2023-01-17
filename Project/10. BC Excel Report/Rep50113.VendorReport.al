report 50113 "Vendor Report"
{
    ApplicationArea = All;
    Caption = 'Vendor Report';
    UsageCategory = ReportsAndAnalysis;
    ExcelLayout = 'Test/Vendor Report.xlsx';

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(Name; Name)
            {
            }
            column(City; City)
            {
            }
            column(PartnerType; "Partner Type")
            {
            }
            column(PurchasesLCY; "Purchases (LCY)")
            {
            }
            column(Balance; Balance)
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
