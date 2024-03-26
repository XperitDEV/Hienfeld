report 50083 "Renseigneren Brief"
{
    ApplicationArea = All;
    Caption = 'Renseigneren Brief';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Renseigneren Brief.rdlc';

    dataset
    {
        dataitem(Renseignerenregels; Renseignerenregels)
        {
            column(productId_Renseignerenregels; Renseignerenregels.productId)
            {
            }
            column(productnummer_Renseignerenregels; Renseignerenregels.productnummer)
            {
            }
            column(Geexporteerd_Renseignerenregels; Renseignerenregels.Geexporteerd)
            {
            }
            column(label_Renseignerenregels; Renseignerenregels.label)
            {
            }
            column(BerichtRun_Renseignerenregels; Renseignerenregels.BerichtRun)
            {
            }
            column(indicatieKwaliteit_Renseignerenregels; Renseignerenregels.indicatieKwaliteit)
            {
            }
            column(arbOngVerzBet_Renseignerenregels; Renseignerenregels.arbOngVerzBet)
            {
            }
            column(arbOngVerzTerugbet_Renseignerenregels; Renseignerenregels.arbOngVerzTerugbet)
            {
            }
            column(arbOngVerzVersch_Renseignerenregels; Renseignerenregels.arbOngVerzVersch)
            {
            }
            column(bSN_Renseignerenregels; Renseignerenregels.bSN)
            {
            }
            column(voorletters_Renseignerenregels; Renseignerenregels.voorletters)
            {
            }
            column(voorvoegsels_Renseignerenregels; Renseignerenregels.voorvoegsels)
            {
            }
            column(achternaam_Renseignerenregels; Renseignerenregels.achternaam)
            {
            }
            column(datum_Renseignerenregels; Renseignerenregels.datum)
            {
            }
            column(straat_Renseignerenregels; Renseignerenregels.straat)
            {
            }
            column(huisnummer_Renseignerenregels; Renseignerenregels.huisnummer)
            {
            }
            column(huisnummerToev_Renseignerenregels; Renseignerenregels.huisnummerToev)
            {
            }
            column(postcode_Renseignerenregels; Renseignerenregels.postcode)
            {
            }
            column(plaats_Renseignerenregels; Renseignerenregels.plaats)
            {
            }
            column(land_Renseignerenregels; Renseignerenregels.land)
            {
            }
            column(Nrreeks_Renseignerenregels; Renseignerenregels."Nr.reeks")
            {
            }
            column(Ordernummer_Renseignerenregels; Renseignerenregels.Ordernummer)
            {
            }
            column(Polisvolgnr_Renseignerenregels; Renseignerenregels.Polisvolgnr)
            {
            }
            column(Boekingsdatum_Renseignerenregels; Renseignerenregels.Boekingsdatum)
            {
            }
            column(Klantnummer_Renseignerenregels; Renseignerenregels.Klantnummer)
            {
            }
            column(Betaalwijze_Renseignerenregels; Renseignerenregels.Betaalwijze)
            {
            }
            column(Makelaar_Renseignerenregels; Renseignerenregels.Makelaar)
            {
            }
            column(Postadres1; Postadres[1])
            {
            }
            column(Postadres2; Postadres[2])
            {
            }
            column(Postadres3; Postadres[3])
            {
            }
            column(Postadres4; Postadres[4])
            {
            }
            column(Postadres5; Postadres[5])
            {
            }
            column(Postadres6; Postadres[6])
            {
            }
            column(Postadres7; Postadres[7])
            {
            }
            column(NaamVerzNemer; NaamVerznemer)
            {
            }
            column(NaamMakelaar; NaamMakelaar)
            {
            }
            column(NaamPost; NaamPost)
            {
            }
            column(NaamAanhef; NaamAanhef)
            {
            }
            // column(ContractVVD; Format(AOK.Contractvervaldatum, 0, '<DAY> <Month Text> <Year4>'))
            // {
            // }
            // column(Klantnr; AOK.Klantnummer)
            // {
            // }
            // column(Makelaarnr; AOK.Makelaar)
            // {
            // }
            column(BerichtRun_Renseigneren; Renseigneren.BerichtRun)
            {
            }
            column(berichttype_Renseigneren; Renseigneren.berichttype)
            {
            }
            column(TODAY; Format(Today, 0, '<Day> <Month Text> <Year4>'))
            {
            }
            column(belastingjaar_Renseigneren; Renseigneren.belastingjaar)
            {
            }
            column(aanleveringnummer_Renseigneren; Renseigneren.aanleveringnummer)
            {
            }
            column(DatumAamaak_Renseigneren; Renseigneren.DatumAamaak)
            {
            }
            column(TijdAanmaak_Renseigneren; Renseigneren.TijdAanmaak)
            {
            }
            column(Geexporteerdop_Renseigneren; Renseigneren."Geexporteerd op")
            {
            }
            column(Volgnummer_Renseigneren; Renseigneren.Volgnummer)
            {
            }
            column(relNr_Renseigneren; Renseigneren.relNr)
            {
            }
            column(gebrSwPakket_Renseigneren; Renseigneren.gebrSwPakket)
            {
            }
            column(naamBerichtgever_Renseigneren; Renseigneren.naamBerichtgever)
            {
            }
            column(rSINBerichtgever_Renseigneren; Renseigneren.rSINBerichtgever)
            {
            }
            column(naamBron_Renseigneren; Renseigneren.naamBron)
            {
            }
            column(rSINBron_Renseigneren; Renseigneren.rSINBron)
            {
            }
            column(straat_Renseigneren; Renseigneren.straat)
            {
            }
            column(huisnummer_Renseigneren; Renseigneren.huisnummer)
            {
            }
            column(postcode_Renseigneren; Renseigneren.postcode)
            {
            }
            column(plaats_Renseigneren; Renseigneren.plaats)
            {
            }
            column(land_Renseigneren; Renseigneren.land)
            {
            }
            column(TotaalBetaald_Renseigneren; Renseigneren.TotaalBetaald)
            {
            }
            column(TotaalGeboekt_Renseigneren; Renseigneren.TotaalGeboekt)
            {
            }
            column(TotaalTerug_Renseigneren; Renseigneren.TotaalTerug)
            {
            }
            column(Nrreeks_Renseigneren; Renseigneren."Nr.reeks")
            {
            }
            column(TagName_Renseigneren; Renseigneren.TagName)
            {
            }
            column(xmlBerichtRun_Renseigneren; Renseigneren.xmlBerichtRun)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Renseigneren.Get(Renseignerenregels.BerichtRun);
                //     AOK.SetCurrentKey(PolisNummer);
                //     AOK.SetRange(PolisNummer, Renseignerenregels.productnummer);
                //     if AOK.FindLast then;

                //     //Makelaar
                //     Customer.Reset;
                //     Tekstuitbr.Reset;
                //     Customer.Get(AOK.Makelaar);
                //     NaamMakelaar := NAVControl.txtJoin(Customer.Voorletters, Customer.Voorvoegsels,
                //                                                                   Customer.Name, '', '');

                //     Tekstuitbr.SetRange(Nummer, Customer."No.");
                //     Tekstuitbr.SetRange(Code, 'NAAM');
                //     if Tekstuitbr.FindFirst then
                //         if Tekstuitbr.Omschrijving <> '' then
                //               NaamMakelaar := Tekstuitbr.Omschrijving;

                //     if CopyStr(NaamMakelaar, 1, 1) = ' ' then
                //         NaamMakelaar := CopyStr(NaamMakelaar, 2, StrLen(NaamMakelaar)-1);

                //     if AOK.Agentnr <> '' then
                //         NaamMakelaar := AOK.Agentnaam;

                //     //Verzekeringnemer
                //     Customer.Reset;
                //     Tekstuitbr.Reset;
                //     Customer.Get(AOK.Klantnummer);
                //     NaamVerznemer := NAVControl.txtJoin(Customer.Voorletters, Customer.Voorvoegsels,
                //                                                                   Customer.Name, '', '');

                //     Tekstuitbr.SetRange(Nummer, Customer."No.");
                //     Tekstuitbr.SetRange(Type, Tekstuitbr.Type::Klant);
                //     Tekstuitbr.SetRange(Code, 'NAAM');
                //     if Tekstuitbr.FindFirst then
                //         if Tekstuitbr.Omschrijving <> '' then
                //               NaamVerznemer := Tekstuitbr.Omschrijving;

                //     if CopyStr(NaamVerznemer, 1, 1) = ' ' then
                //         NaamVerznemer := CopyStr(NaamVerznemer, 2, StrLen(NaamVerznemer)-1);

                //     NaamPost := NAVControl.txtJoin(Customer.Voorletters, Customer.Voorvoegsels,
                //                                                                   Customer.Name, '', '');

                //     Tekstuitbr.SetRange(Nummer, Customer."No.");
                //     Tekstuitbr.SetRange(Code, 'NAAM');
                //     if Tekstuitbr.FindFirst then
                //         if Tekstuitbr.Omschrijving <> '' then
                //               NaamPost := Tekstuitbr.Omschrijving;

                //     if CopyStr(NaamPost, 1, 1) = ' ' then
                //         NaamPost := CopyStr(NaamPost, 2, StrLen(NaamPost)-1);

                //     FormatAddr.KlntInclTextUitbreidingPost(Postadres, Customer, 500);
            end;
        }
    }
    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    var
        Renseigneren: Record Renseigneren;
        NaamAanhef: Text;
        NaamMakelaar: Text;
        NaamPost: Text;
        NaamVerznemer: Text;
        Postadres: array[8] of Text[250];
}
