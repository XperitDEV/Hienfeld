codeunit 50000 "HF Custom Events"
{

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnBeforeValidatePostCode', '', false, false)]
    local procedure OnBeforeValidatePostCode(var Customer: Record Customer; var PostCodeRec: Record "Post Code"; CurrentFieldNo: Integer; var IsHandled: Boolean);
    var
        SalesHEader: record "Sales Header";

    begin

        IsHandled := true;
    end;


}
