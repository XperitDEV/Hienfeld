page 50001 "HF Customer Segment List"
{
    ApplicationArea = All;
    Caption = 'Customer Segment List';
    PageType = List;
    SourceTable = "HF Customer Segment";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "HF Customer Segment Card";


    layout
    {
        area(content)
        {
            repeater(General)
            {
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


