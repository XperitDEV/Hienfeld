page 50060 "Renseigneren Lines"
{
    ApplicationArea = All;
    Caption = 'Renseigneren Lines';
    DeleteAllowed = false;
    PageType = ListPart;
    SourceTable = Renseignerenregels;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(productId; Rec.productId)
                {
                    ToolTip = 'Specifies the value of the productId field.';
                }
                field(Geexporteerd; Rec.Geexporteerd)
                {
                    ApplicationArea = All;
                }
                field(Boekingsdatum; Rec.Boekingsdatum)
                {
                    ApplicationArea = All;
                }
                field(productnummer; Rec.productnummer)
                {
                    ApplicationArea = All;
                }
                field(Klantnummer; Rec.Klantnummer)
                {
                    ApplicationArea = All;
                }
                field(Betaalwijze; Rec.Betaalwijze)
                {
                    ApplicationArea = All;
                }
                field(BerichtRun; Rec.BerichtRun)
                {
                    ApplicationArea = All;
                }
                field(indicatieKwaliteit; Rec.indicatieKwaliteit)
                {
                    ApplicationArea = All;
                }
                field(arbOngVerzBet; Rec.arbOngVerzBet)
                {
                    ApplicationArea = All;
                }
                field(arbOngVerzTerugbet; Rec.arbOngVerzTerugbet)
                {
                    ApplicationArea = All;
                }
                field(arbOngVerzVersch; Rec.arbOngVerzVersch)
                {
                    ApplicationArea = All;
                }
                field(bSN; Rec.bSN)
                {
                    ApplicationArea = All;
                }
                field(voorletters; Rec.voorletters)
                {
                    ApplicationArea = All;
                }
                field(voorvoegsels; Rec.voorvoegsels)
                {
                    ApplicationArea = All;
                }
                field(achternaam; Rec.achternaam)
                {
                    ApplicationArea = All;
                }
                field(datum; Rec.datum)
                {
                    ApplicationArea = All;
                }
                field(straat; Rec.straat)
                {
                    ApplicationArea = All;
                }
                field(huisnummer; Rec.huisnummer)
                {
                    ApplicationArea = All;
                }
                field(huisnummerToev; Rec.huisnummerToev)
                {
                    ApplicationArea = All;
                }
                field(postcode; Rec.postcode)
                {
                    ApplicationArea = All;
                }
                field(plaats; Rec.plaats)
                {
                    ApplicationArea = All;
                }
                field(land; Rec.land)
                {
                    ApplicationArea = All;
                }
                field(PremieBetaald; Rec.PremieBetaald)
                {
                    ApplicationArea = All;
                }
                field(PremieTerugbet; Rec.PremieTerugbet)
                {
                    ApplicationArea = All;
                }
                field(PremieGeboekt; Rec.PremieGeboekt)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
