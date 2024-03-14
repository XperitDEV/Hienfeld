table 50001 "HF Customer Segment"
{
    DataClassification = CustomerContent;
    Caption = 'Customer Segment';

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description 2';
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    procedure SecondFunction()
    begin
        TestFunction();
    end;


    local procedure TestFunction()
    var
        HelloMsg: Label 'Hello';
    begin
        Message(HelloMsg);
    end;

}