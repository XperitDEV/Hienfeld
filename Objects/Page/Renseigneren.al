page 50059 Renseigneren
{
    ApplicationArea = All;
    Caption = 'Renseigneren';
    PageType = Card;
    SourceTable = Renseigneren;
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                //Editable = NotEditable;

                field(BerichtRun; Rec.BerichtRun)
                {
                    ApplicationArea = All;
                }
                field(berichttype; Rec.berichttype)
                {
                    ApplicationArea = All;
                }
                field(aanmaakmoment; Rec.aanmaakmoment)
                {
                    ApplicationArea = All;
                }
                field(aanleveringnummer; Rec.aanleveringnummer)
                {
                    ApplicationArea = All;
                }
                field(belastingjaar; Rec.belastingjaar)
                {
                    ApplicationArea = All;
                }
                field(version; Rec.version)
                {
                    ApplicationArea = All;
                    ToolTip = 'Controleer of het versienummer al bestaat';
                }
                field(Datumvan; Rec.Datumvan)
                {
                    ApplicationArea = All;
                }
                field(Datumtot; Rec.Datumtot)
                {
                    ApplicationArea = All;
                }
                field(DatumAamaak; Rec.DatumAamaak)
                {
                    ApplicationArea = All;
                    Enabled = false;
                }
                field(TijdAanmaak; Rec.TijdAanmaak)
                {
                    ApplicationArea = All;
                    Enabled = false;
                }
                field(GeexporteerdOp; Rec."Geexporteerd op")
                {
                    ApplicationArea = All;
                    Enabled = false;
                }
                field(xmlBerichtRun; Rec.xmlBerichtRun)
                {
                    ApplicationArea = All;
                }

                field(relNr; Rec.relNr)
                {
                    ApplicationArea = All;
                }
                field(gebrSwPakket; Rec.gebrSwPakket)
                {
                    ApplicationArea = All;
                }
                field(TotaalBetaald; Rec.TotaalBetaald)
                {
                    ApplicationArea = All;
                }
                field(TotaalTerug; Rec.TotaalTerug)
                {
                    ApplicationArea = All;
                }
                field(TotaalGeboekt; Rec.TotaalGeboekt)
                {
                    ApplicationArea = All;
                }
                field(naamBerichtgever; Rec.naamBerichtgever)
                {
                    ApplicationArea = All;
                }
                field(rSINBerichtgever; Rec.rSINBerichtgever)
                {
                    ApplicationArea = All;
                }
                field(naamBron; Rec.naamBron)
                {
                    ApplicationArea = All;
                }
                field(rSINBron; Rec.rSINBron)
                {
                    ApplicationArea = All;
                }
                field(straat; Rec.straat)
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field(huisnummer; Rec.huisnummer)
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field(postcode; Rec.postcode)
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field(plaats; Rec.plaats)
                {
                    ApplicationArea = All;
                }
                field(land; Rec.land)
                {
                    ApplicationArea = All;
                }

            }
            part(Renseignerenregels; "Renseigneren Lines")
            {
                ApplicationArea = All;
                //Editable = NotEditable;
                SubPageLink = BerichtRun = field(BerichtRun);
                SubPageView = sorting(productId);
            }

        }
    }
}

