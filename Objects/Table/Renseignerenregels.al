table 50321 Renseignerenregels
{
    Caption = 'Renseignerenregels';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; productId; Code[10])
        {
            Caption = 'productId';
        }
        field(2; productnummer; Code[20])
        {
            DataClassification = CustomerContent;
            Description = 'Polisnummer';
        }
        field(3; Geexporteerd; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(4; label; Text[50])
        {
            DataClassification = CustomerContent;
            Description = 'Polisomschrijving';
        }
        field(5; BerichtRun; Code[20])
        {
            DataClassification = CustomerContent;
            Description = 'Koppel met kop';
        }
        field(8; indicatieKwaliteit; Integer)
        {
            DataClassification = CustomerContent;
            Description = 'Kwaliteit gegevens = 1';
        }
        field(9; arbOngVerzBet; Decimal)
        {
            DataClassification = CustomerContent;
            Description = 'Premie naar boven afgerond';
        }
        field(10; arbOngVerzTerugbet; Decimal)
        {
            DataClassification = CustomerContent;
            Description = 'Terugbetaling naar beneden afgerond';
        }
        field(11; arbOngVerzVersch; Decimal)
        {
            DataClassification = CustomerContent;
            Description = 'Premie via tussenpersoon';
        }
        field(12; PremieBetaald; Decimal)
        {
            DataClassification = CustomerContent;
            Description = 'Origineel';
        }
        field(13; PremieTerugbet; Decimal)
        {
            DataClassification = CustomerContent;
            Description = 'Origineel';
        }
        field(14; PremieGeboekt; Decimal)
        {
            DataClassification = CustomerContent;
            Description = 'Origineel';
        }
        field(15; bSN; Text[30])
        {
            DataClassification = CustomerContent;
            Description = 'Zonder voorloopnullen';
        }
        field(16; voorletters; Text[10])
        {
            DataClassification = CustomerContent;
            Description = 'Partijen entiteit AO';
        }
        field(17; voorvoegsels; Text[10])
        {
            DataClassification = CustomerContent;
        }
        field(18; achternaam; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(19; datum; Date)
        {
            DataClassification = CustomerContent;
            Description = 'Geboortedatum yyyy-mm-dd';
        }
        field(20; straat; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(21; huisnummer; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(22; huisnummerToev; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(23; postcode; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(24; plaats; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(25; land; Code[2])
        {
            DataClassification = CustomerContent;
        }
        field(50; "Nr.reeks"; Code[10])
        {
            DataClassification = CustomerContent;
            InitValue = 'AOV';
        }
        field(51; Ordernummer; Code[20])
        {
            DataClassification = CustomerContent;
            Description = 'Ass Ordernummer';
        }
        field(52; Polisvolgnr; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(53; Boekingsdatum; Date)
        {
            DataClassification = CustomerContent;
            Description = 'Boekings- of Betaaldatum';
        }
        field(54; Klantnummer; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(55; Betaalwijze; Code[1])
        {
            DataClassification = CustomerContent;
        }
        field(56; Makelaar; Code[20])
        {
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; productId)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        //NoSeriesMgt.InitSeries("Nr.reeks", "Nr.reeks", Today, productId, "Nr.reeks");
    end;
}
