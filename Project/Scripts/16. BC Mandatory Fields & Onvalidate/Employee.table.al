table 50101 "Employee2"
{
    fields
    {
        field(1; "Employee No"; Code[20]) { }
        field(10; "Employee Name"; Text[30]) { }
        field(20; "Door No"; Text[10]) { }
        field(40; "Street Name"; Text[15]) { }
        field(50; "City"; Text[15]) { }
        field(60; "State"; Option)
        {
            OptionMembers = "Tamilnadu","Karnataka","Kerala","Telangana";
        }
        field(70; "Country"; Option)
        {
            OptionMembers = "India";
        }
        field(100; "Date of Birth"; Date) { }
        field(110; "Date of Joining"; Date) { }
        field(120; "Department"; Text[15]) { }
        field(130; "Designation"; Option)
        {
            OptionMembers = "Jr Programmer","Sr Programmer","Team Lead","Manager","Sr Manager";
        }
        field(140; "Blood Group"; Text[3]) { }
        field(150; "Salary"; Decimal) { }
    }

    keys
    {
        key(PK; "Employee No") { }
        key(Name; "Employee Name") { }
    }
}