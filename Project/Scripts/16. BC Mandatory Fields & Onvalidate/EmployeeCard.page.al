page 50101 "Employee2 card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employee2;

    layout
    {
        area(Content)
        {
            group("Basic Info")
            {
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Employee Number';
                    ShowMandatory = true;
                    NotBlank = true;
                }

                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Employee Name';
                    Editable = true;
                }

                field("Blood Group"; Rec."Blood Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Blood Group';
                    Editable = true;
                }

                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Date of Birth';
                    Editable = true;
                }
            }

            group("Contact Info")
            {
                field("Door No"; Rec."Door No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Door Number';
                    Editable = true;
                }

                field("Street Name"; Rec."Street Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Street Name';
                    Editable = true;
                }

                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'City';
                    Editable = true;
                }

                field(State; Rec.State)
                {
                    ApplicationArea = All;
                    ToolTip = 'State';
                    Editable = true;
                }

                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                    ToolTip = 'Country';
                    Editable = true;
                }
            }

            group("General Info")
            {
                field("Date of Joining"; Rec."Date of Joining")
                {
                    ApplicationArea = All;
                    ToolTip = 'Date of Joining';
                    Editable = true;
                }

                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                    ToolTip = 'Employee Departement';
                    Editable = true;
                }

                field(Designation; Rec.Designation)
                {
                    ApplicationArea = All;
                    ToolTip = 'Employee Designation';
                    Editable = true;
                }

                field(Salary; Rec.Salary)
                {
                    ApplicationArea = All;
                    ToolTip = 'Employee Salary';
                    Editable = true;
                    ShowMandatory = true;
                    NotBlank = true;

                    // Salary should be more then 15.000
                    trigger OnValidate()
                    begin
                        if (Rec.Salary < 15000) then
                            Error('Please enter a salary above or equal to $15.000');
                    end;
                }
            }
        }
    }
}