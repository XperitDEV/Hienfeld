page 50000 "GS Custom Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "GS Custom Setup";
    Caption = 'Custom Setup';

    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                caption = 'General';

            }
        }
    }
    trigger OnOpenPage()
    begin
        if not rec.get() then
            rec.Insert()
    end;
}