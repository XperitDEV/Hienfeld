table 50001 "Tony Test"
{
    Caption = 'Tony Test';
    DataClassification = ToBeClassified;


    fields
    {
        field(50001; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
