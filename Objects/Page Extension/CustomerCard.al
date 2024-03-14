pageextension 50001 "HF Customer Card" extends "Customer Card"
{
    layout
    {

        addafter("Salesperson Code")
        {


            field("HF Customer Segment Code"; Rec."HF Customer Segment Code")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

}