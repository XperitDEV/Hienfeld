page 50001 "Tony Test"
{
    ApplicationArea = All;
    Caption = 'Tony Test';
    PageType = Card;
    SourceTable = "Tony Test";
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
            }
        }
    }
}
