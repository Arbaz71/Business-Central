tableextension 50100 Customer extends Customer
{
    fields
    {
        field(10001; RewardLevel; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Reward Level';
            MinValue = 0;
        }
        field(10002; RewardPoints; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Reward Points';
            MinValue = 0;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}