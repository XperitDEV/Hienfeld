codeunit 50001 "HF Custom Functions"
{

    procedure ShowListOfCustomer(var CustomerSegment: Record "HF Customer Segment")
    var
        Customer: Record Customer;
    begin
        Customer.SetRange("HF Customer Segment Code", CustomerSegment.code);
        page.RunModal(Page::"Customer List", Customer);
    end;
}
