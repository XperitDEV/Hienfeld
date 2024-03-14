pageextension 50000 "GS Company Information" extends "Company Information"
{
    layout
    {
        addafter(Shipping)
        {
            group(GS_Mailing)
            {
                Caption = 'Mailing';

                field("GS Mailing Name"; Rec."GS Mailing Name")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("GS Mailing Name 2"; Rec."GS Mailing Name 2")
                {
                    ApplicationArea = Basic, Suite;
                    Visible = false;
                }
                field("GS Mailing Address"; Rec."GS Mailing Address")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("GS Mailing Address 2"; Rec."GS Mailing Address 2")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("GS Mailing City"; Rec."GS Mailing City")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("GS Mailing County"; Rec."GS Mailing County")
                {
                    ApplicationArea = Basic, Suite;
                    Visible = CountyVisible;
                }
                field("GS Mailing Post Code"; Rec."GS Mailing Post Code")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("GS Mailing Country/Region Code"; Rec."GS Mailing Country/Region")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("GS Mailing Contact"; Rec."GS Mailing Contact")
                {
                    ApplicationArea = Suite;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }


    trigger OnOpenPage()
    begin
        CountyVisible := FormatAddress.UseCounty(Rec."Country/Region Code");
    end;

    var
        FormatAddress: Codeunit "Format Address";
        CountyVisible: Boolean;
}