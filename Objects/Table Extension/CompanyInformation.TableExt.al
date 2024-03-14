tableextension 50000 "HF Company Information" extends "Company Information"
{
    fields
    {
        field(50000; "HF Mailing Name"; Text[100])
        {
            Caption = 'Name';
        }
        field(50001; "HF Mailing Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(50002; "HF Mailing Address"; Text[100])
        {
            Caption = 'Address';
        }
        field(50003; "HF Mailing Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(50004; "HF Mailing Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = if ("HF Mailing Country/Region" = const('')) "Post Code".Code
            else
            if ("HF Mailing Country/Region" = filter(<> '')) "Post Code".Code where("Country/Region Code" = field("HF Mailing Country/Region"));
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode.LookupPostCode("HF Mailing City", "HF Mailing Post Code", "HF Mailing County", "HF Mailing Country/Region");
            end;

            trigger OnValidate()
            var
                IsHandled: Boolean;
            begin
                IsHandled := false;
                if not IsHandled then
                    PostCode.ValidatePostCode(
                        "HF Mailing City", "HF Mailing Post Code", "HF Mailing County", "HF Mailing Country/Region", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(50005; "HF Mailing City"; Text[30])
        {
            Caption = 'City';
            TableRelation = if ("HF Mailing Country/Region" = const('')) "Post Code".City
            else
            if ("HF Mailing Country/Region" = filter(<> '')) "Post Code".City where("Country/Region Code" = field("HF Mailing Country/Region"));
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode.LookupPostCode("HF Mailing City", "HF Mailing Post Code", "HF Mailing County", "HF Mailing Country/Region");
            end;

            trigger OnValidate()
            begin
                PostCode.ValidateCity(
                  "HF Mailing City", "HF Mailing Post Code", "HF Mailing County", "HF Mailing Country/Region", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }

        field(50006; "HF Mailing County"; Text[30])
        {
            CaptionClass = '5,4,' + "HF Mailing Country/Region";
            Caption = 'County';
        }
        field(50007; "HF Mailing Country/Region"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(50008; "HF Mailing Contact"; Text[100])
        {
            Caption = 'Contact';
        }
    }

    var
        PostCode: Record "Post Code";
}
