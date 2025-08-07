table 50101 ActivationCodeInformation
{
    DataClassification = SystemMetadata;
    Caption = 'Activation Code Information';
    TableType = Normal;

    fields
    {
        field(1; ActivationCode; Text[14])
        {
            Caption = 'Activation Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
            Description = 'Activation code used to activate Customer Rewards';
        }
        field(2; DateActivated; Date)
        {
            Caption = 'Date Activated';
            DataClassification = SystemMetadata;
            Description = 'Date Customer Rewards was activated';
        }
        field(3; ExpirationDate; Date)
        {
            Caption = 'Expiration Date';
            DataClassification = SystemMetadata;
            Description = 'Customer number associated with the activation code';
        }
    }




    keys
    {
        key(PK; ActivationCode)
        {
            Clustered = true;
        }

    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}