query 50108 "Customer Sales by Quantity"
{
    QueryType = Normal;
    OrderBy = descending(Quantity);

    elements
    {
        dataitem(Customer; Customer)
        {
            column(CustNo; "No.")
            {

            }

            column(Name; Name)
            {

            }

            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;

                column(Quantity; Quantity)
                {
                    Method = Sum;
                }
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}