tableextension 50000 "GS Company Information" extends "Company Information"
{
    fields
    {
        field(50000; "GS Mailing Name"; Text[100])
        {
            Caption = 'Name';
        }
        field(50001; "GS Mailing Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(50002; "GS Mailing Address"; Text[100])
        {
            Caption = 'Address';
        }
        field(50003; "GS Mailing Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(50004; "GS Mailing Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = if ("GS Mailing Country/Region" = const('')) "Post Code".Code
            else
            if ("GS Mailing Country/Region" = filter(<> '')) "Post Code".Code where("Country/Region Code" = field("GS Mailing Country/Region"));
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode.LookupPostCode("GS Mailing City", "GS Mailing Post Code", "GS Mailing County", "GS Mailing Country/Region");
            end;

            trigger OnValidate()
            var
                IsHandled: Boolean;
            begin
                IsHandled := false;
                if not IsHandled then
                    PostCode.ValidatePostCode(
                        "GS Mailing City", "GS Mailing Post Code", "GS Mailing County", "GS Mailing Country/Region", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(50005; "GS Mailing City"; Text[30])
        {
            Caption = 'City';
            TableRelation = if ("GS Mailing Country/Region" = const('')) "Post Code".City
            else
            if ("GS Mailing Country/Region" = filter(<> '')) "Post Code".City where("Country/Region Code" = field("GS Mailing Country/Region"));
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode.LookupPostCode("GS Mailing City", "GS Mailing Post Code", "GS Mailing County", "GS Mailing Country/Region");
            end;

            trigger OnValidate()
            begin
                PostCode.ValidateCity(
                  "GS Mailing City", "GS Mailing Post Code", "GS Mailing County", "GS Mailing Country/Region", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }

        field(50006; "GS Mailing County"; Text[30])
        {
            CaptionClass = '5,4,' + "GS Mailing Country/Region";
            Caption = 'County';
        }
        field(50007; "GS Mailing Country/Region"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(50008; "GS Mailing Contact"; Text[100])
        {
            Caption = 'Contact';
        }
    }

    var
        PostCode: Record "Post Code";
}
