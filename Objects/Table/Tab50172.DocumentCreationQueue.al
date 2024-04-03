table 50172 "Document Creation Queue"
{
    Caption = 'Document Creation Queue1';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "KEY"; Guid)
        {
            Caption = 'KEY';
        }
        field(2; JOBID; Code[10])
        {
            Caption = 'JOBID';
        }
        field(3; LineNo; Integer)
        {
            Caption = 'LineNo';
        }
        field(4; "Ass.Ordernr"; Code[20])
        {
            Caption = 'Ass.Ordernr';
        }
        field(5; "Ass.Volgnr"; Code[10])
        {
            Caption = 'Ass.Volgnr';
        }
        field(6; "Ass.Stuknr"; Code[20])
        {
            Caption = 'Ass.Stuknr';
        }
        field(7; "Ass.Polisnr"; Code[20])
        {
            Caption = 'Ass.Polisnr';
        }
        field(8; "Ass.Stuksoort"; Option)
        {
            Caption = 'Ass.Stuksoort';
            OptionMembers = Aanvraag,Verstuurd,Factuur,Creditnota,Offerte,Polis,Historie,Sjabloon,,,,,,,,,,Collectiviteit,,,,,,,,,,Init;
        }
    }
    keys
    {
        key(PK; "KEY")
        {
            Clustered = true;
        }
    }
}
