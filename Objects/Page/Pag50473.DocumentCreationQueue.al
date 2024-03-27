page 50473 "Document Creation Queue"
{
    ApplicationArea = All;
    Caption = 'Document Creation Queue';
    PageType = List;
    SourceTable = 50172;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("KEY"; Rec."KEY")
                {
                    ToolTip = 'Specifies the value of the KEY field.';
                }
                field(JOBID; Rec.JOBID)
                {
                    ToolTip = 'Specifies the value of the JOBID field.';
                }
                field(LineNo; Rec.LineNo)
                {
                    ToolTip = 'Specifies the value of the LineNo field.';
                }
                field("Ass.Ordernr"; Rec."Ass.Ordernr")
                {
                    ToolTip = 'Specifies the value of the Ass.Ordernr field.';
                }
                field("Ass.Volgnr"; Rec."Ass.Volgnr")
                {
                    ToolTip = 'Specifies the value of the Ass.Volgnr field.';
                }
                field("Ass.Stuknr"; Rec."Ass.Stuknr")
                {
                    ToolTip = 'Specifies the value of the Ass.Stuknr field.';
                }
                field("Ass.Polisnr"; Rec."Ass.Polisnr")
                {
                    ToolTip = 'Specifies the value of the Ass.Polisnr field.';
                }
                field("Ass.Stuksoort"; Rec."Ass.Stuksoort")
                {
                    ToolTip = 'Specifies the value of the Ass.Stuksoort field.';
                }
            }
        }
    }
}
