report 50101 "Report for Multiple Tables"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Templates/Advanced Report.RDL';

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";
            PrintOnlyIfDetail = True;

            column(No_Customer; "No.")
            {
                IncludeCaption = True;
            }

            column(Name_Customer; Name)
            {
                IncludeCaption = True;
            }

            column(Phone_Customer; "Phone No.")
            {
                IncludeCaption = True;
            }

            column(Address_Customer; Address)
            {
                IncludeCaption = True;
            }

            column(EMail_Customer; "E-Mail")
            {
                IncludeCaption = True;
            }

            dataitem(CustLedger; "Cust. Ledger Entry")
            {
                DataItemTableView = sorting("Entry No.");
                DataItemLink = "Customer No." = field("No.");

                column(EntryNo_CustLedgerEntry; "Entry No.")
                {
                    IncludeCaption = True;
                }

                column(CustomerNo_CustLedgerEntry; "Customer No.")
                {
                    IncludeCaption = True;
                }

                column(PostingDate_CustLedgerEntry; "Posting Date")
                {
                    IncludeCaption = True;
                }

                column(DocumentType_CustLedgerEntry; "Document Type")
                {
                    IncludeCaption = True;
                }

                column(DocumentNo_CustLedgerEntry; "Document No.")
                {
                    IncludeCaption = True;
                }

                column(Description_CustLedgerEntry; Description)
                {
                    IncludeCaption = True;
                }

                column(CurrencyCode_CustLedgerEntry; "Currency Code")
                {
                    IncludeCaption = True;
                }

                column(Amount_CustLedgerEntry; Amount)
                {
                    IncludeCaption = True;
                }

                column(OriginalAmtLCY_CustLedgerEntry; "Original Amt. (LCY)")
                {
                    IncludeCaption = True;
                }

                column(RemainingAmtLCY_CustLedgerEntry; "Remaining Amt. (LCY)")
                {
                    IncludeCaption = True;
                }

                dataitem(DetCustLedger; "Detailed Cust. Ledg. Entry")
                {
                    DataItemTableView = sorting("Entry No.");
                    DataItemLink = "Cust. Ledger Entry No." = field("Entry No."), "Customer No." = field("Customer No.");

                    column(EntryNo_DetailedCustLedgEntry; "Entry No.")
                    {
                        IncludeCaption = True;
                    }

                    column(EntryType_DetailedCustLedgEntry; "Entry Type")
                    {
                        IncludeCaption = True;
                    }

                    column(PostingDate_DetailedCustLedgEntry; "Posting Date")
                    {
                        IncludeCaption = True;
                    }

                    column(DocumentType_DetailedCustLedgEntry; "Document Type")
                    {
                        IncludeCaption = True;
                    }

                    column(DocumentNo_DetailedCustLedgEntry; "Document No.")
                    {
                        IncludeCaption = True;
                    }

                    column(AmountLCY_DetailedCustLedgEntry; "Amount (LCY)")
                    {
                        IncludeCaption = True;
                    }

                    column(TransactionNo_DetailedCustLedgEntry; "Transaction No.")
                    {
                        IncludeCaption = True;
                    }

                    column(JournalBatchName_DetailedCustLedgEntry; "Journal Batch Name")
                    {
                        IncludeCaption = True;
                    }

                    column(DebitAmountLCY_DetailedCustLedgEntry; "Debit Amount (LCY)")
                    {
                        IncludeCaption = True;
                    }

                    column(CreditAmountLCY_DetailedCustLedgEntry; "Credit Amount (LCY)")
                    {
                        IncludeCaption = True;
                    }
                }
            }

            dataitem("Sales Header"; "Sales Header")
            {
                DataItemTableView = sorting("Document Type", "No.");
                DataItemLink = "Sell-to Customer No." = field("No.");

                column(DocumentType_SalesHeader; "Document Type")
                {
                    IncludeCaption = True;
                }

                column(No_SalesHeader; "No.")
                {
                    IncludeCaption = True;
                }

                column(PostingDate_SalesHeader; "Posting Date")
                {
                    IncludeCaption = True;
                }

                column(PricesIncludingVAT_SalesHeader; "Prices Including VAT")
                {
                    IncludeCaption = True;
                }

                column(Amount_SalesHeader; Amount)
                {
                    IncludeCaption = True;
                }
            }
        }
    }

    labels
    {
        Sales_Document_Caption = 'Sales Documents';
        Total_Caption = 'Total';
    }
}