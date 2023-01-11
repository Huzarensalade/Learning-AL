table 50111 CustomEmployee
{
    Caption = 'Employee Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "emp code"; Code[10])
        {
            DataClassification = ToBeClassified;

        }

        field(10; "emp name"; Text[15])
        {
            DataClassification = ToBeClassified;

        }

        field(20; salary; Decimal)
        {
            DataClassification = ToBeClassified;

        }

        field(30; DOJ; Date)
        {
            DataClassification = ToBeClassified;

        }

        field(40; City; Option)
        {
            OptionMembers = Chennai,Coimbatore,Bangalore,Mumbai;
            DataClassification = ToBeClassified;

        }

        field(50; gender; Option)
        {
            OptionMembers = Male,Female,NWTS;
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "emp code", "emp name")
        {
            Clustered = true;
        }

        key(sk; City)
        {

        }
    }

    trigger OnInsert()
    begin
        Message('Data inserted');
    end;

    trigger OnModify()
    begin
        Message('Data modified');
    end;

    trigger OnDelete()
    begin
        Message('Data deleted');
    end;

    trigger OnRename()
    begin
        Message('Data renamed');
    end;

}