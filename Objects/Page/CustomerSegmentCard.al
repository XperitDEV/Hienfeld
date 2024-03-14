page 50002 "HF Customer Segment Card"
{
    ApplicationArea = All;
    Caption = 'Customer Segment Card';
    PageType = Card;
    SourceTable = "HF Customer Segment";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(ListOfCustomers)
            {
                Caption = 'List of customers';

                trigger OnAction()
                var
                    CustomFunction: codeunit "HF Custom Functions";
                begin
                    CustomFunction.ShowListOfCustomer(Rec);
                end;
            }
        }
    }
}
