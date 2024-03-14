tableextension 50001 "HF Customer" extends Customer
{
    fields
    {
        field(50000; "HF Customer Segment Code"; code[10])
        {
            Caption = 'Customer Segment';
            TableRelation = "HF Customer Segment";
        }
    }
}