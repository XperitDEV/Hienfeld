table 50000 "GS Custom Setup"
{
    Caption = 'Custom Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = AccountData;
            Caption = 'Primary Key';
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
