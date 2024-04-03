table 50320 Renseigneren
{
    Caption = 'Renseigneren';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; BerichtRun; Code[20])
        {
            Caption = 'BerichtRun';
        }
        field(2; berichttype; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(3; aanmaakmoment; DateTime)
        {
            DataClassification = CustomerContent;
        }
        field(4; belastingjaar; Integer)
        {
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if belastingjaar = Rens.belastingjaar then
                    Volgnummer := Rens.Volgnummer + 1;
                version := StrSubstNo('%1/%2', belastingjaar, PadStr('', 2 - StrLen(Format(Volgnummer)), '0') + Format(Volgnummer));
                Datumvan := DMY2Date(1, 1, belastingjaar);
                Datumtot := DMY2Date(31, 12, belastingjaar);
                Datumfilter := Format(Datumvan) + '..' + Format(Datumtot);
                // TagName  := STRSUBSTNO('s_1:verzekeringsGegevens '
                //                       + 'xsi:schemaLocation="http://xml.belastingdienst.nl/schemas/IVGV/2022/01 VP_GT2022_V1.20210204.xsd" '
                //                       + 'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '
                //                       + 'xmlns:xs_1="http://xml.belastingdienst.nl/schemas/IVGV/2022/01" version="%1" ',version);
            end;
        }
        field(5; Datumvan; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date From';

            trigger OnValidate()
            begin
                Datumtot := DMY2Date(31, 12, Date2DMY(Datumvan, 3));
                Datumfilter := Format(Datumvan) + '..' + Format(Datumtot);
            end;
        }
        field(6; Datumtot; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date To';

            trigger OnValidate()
            begin
                Datumfilter := Format(Datumvan) + '..' + Format(Datumtot);
            end;
        }
        field(7; Datumfilter; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(8; version; Text[10])
        {
            DataClassification = CustomerContent;
            Description = 'yyyy/01';
        }
        field(9; aanleveringnummer; Text[150])
        {
            DataClassification = CustomerContent;
        }
        field(10; DatumAamaak; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date Added';
        }
        field(11; TijdAanmaak; Time)
        {
            DataClassification = CustomerContent;
            Caption = 'Time Added';
        }
        field(12; "Geexporteerd op"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(13; Volgnummer; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(14; relNr; Code[10])
        {
            DataClassification = CustomerContent;
            Description = 'SWO01513';
            InitValue = 'SWO01513';
        }
        field(15; gebrSwPakket; Text[30])
        {
            DataClassification = CustomerContent;
            Description = 'Pakket wat wordt gebruikt';
        }
        field(16; naamBerichtgever; Text[50])
        {
            DataClassification = CustomerContent;
            Description = 'Hienfeld';
        }
        field(17; rSINBerichtgever; Integer)
        {
            DataClassification = CustomerContent;
            Description = '802602708';
        }
        field(18; naamBron; Text[50])
        {
            DataClassification = CustomerContent;
            Description = 'Achmea';
        }
        field(19; rSINBron; Integer)
        {
            DataClassification = CustomerContent;
            Description = '800478678';
        }
        field(20; straat; Text[20])
        {
            DataClassification = CustomerContent;
        }
        field(21; huisnummer; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(22; postcode; Code[6])
        {
            DataClassification = CustomerContent;
        }
        field(23; plaats; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(24; land; Code[2])
        {
            DataClassification = CustomerContent;
        }
        field(30; TotaalBetaald; Decimal)
        {
            CalcFormula = sum(Renseignerenregels.PremieBetaald where(BerichtRun = field(BerichtRun)));
            FieldClass = FlowField;
        }
        field(31; TotaalGeboekt; Decimal)
        {
            CalcFormula = sum(Renseignerenregels.PremieGeboekt where(BerichtRun = field(BerichtRun)));
            FieldClass = FlowField;
        }
        field(32; TotaalTerug; Decimal)
        {
            CalcFormula = sum(Renseignerenregels.PremieTerugbet where(BerichtRun = field(BerichtRun)));
            FieldClass = FlowField;
        }
        field(50; "Nr.reeks"; Code[10])
        {
            DataClassification = CustomerContent;
            InitValue = 'AOV KOP';
        }
        field(51; TagName; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'Eerste element';
        }
        field(52; xmlBerichtRun; Code[20])
        {
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; BerichtRun)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if Rens.FindLast then begin
            NoSeriesMgt.InitSeries("Nr.reeks", "Nr.reeks", Today, BerichtRun, "Nr.reeks");
            berichttype := Rens.berichttype;
            relNr := Rens.relNr;
            gebrSwPakket := Rens.gebrSwPakket;
            naamBerichtgever := Rens.naamBerichtgever;
            rSINBerichtgever := Rens.rSINBerichtgever;
            naamBron := Rens.naamBron;
            rSINBron := Rens.rSINBron;
            plaats := Rens.plaats;
            land := Rens.land;
        end;

        if BerichtRun = '' then
            NoSeriesMgt.InitSeries("Nr.reeks", "Nr.reeks", Today, BerichtRun, "Nr.reeks");

        aanmaakmoment := CurrentDateTime;
        DatumAamaak := Today;
        TijdAanmaak := Time;
        aanleveringnummer := BerichtRun;

        Datumvan := DMY2Date(1, 1, Date2DMY(Today, 3));
        Datumtot := CalcDate('<CY>', Datumvan);
        Volgnummer := 1;
    end;

    var
        Rens: Record Renseigneren;
}
