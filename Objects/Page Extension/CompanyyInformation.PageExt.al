pageextension 50000 "HF Company Information" extends "Company Information"
{
    layout
    {
        addafter(Shipping)
        {
            group(GS_Mailing)
            {
                Caption = 'Mailing';

                field("HF Mailing Name"; Rec."HF Mailing Name")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("HF Mailing Name 2"; Rec."HF Mailing Name 2")
                {
                    ApplicationArea = Basic, Suite;
                    Visible = false;
                }
                field("HF Mailing Address"; Rec."HF Mailing Address")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("HF Mailing Address 2"; Rec."HF Mailing Address 2")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("HF Mailing City"; Rec."HF Mailing City")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("HF Mailing County"; Rec."HF Mailing County")
                {
                    ApplicationArea = Basic, Suite;
                    Visible = CountyVisible;
                }
                field("HF Mailing Post Code"; Rec."HF Mailing Post Code")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("HF Mailing Country/Region Code"; Rec."HF Mailing Country/Region")
                {
                    ApplicationArea = Basic, Suite;
                }
                field("HF Mailing Contact"; Rec."HF Mailing Contact")
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