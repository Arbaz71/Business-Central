table 50102  "Customer Rewards Mgt. Setup"
{
    Caption = 'Customer Rewards Mgt. Setup';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;"Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
            
        }
       field(2; "Cust. Rew. Ext. Mgt. Cod. ID"; Integer)
        {
            Caption = 'Customer Rewards Ext. Mgt. Codeunit ID';
            DataClassification = CustomerContent;
            TableRelation = "CodeUnit Metadata".ID;
        }
        
    }
    
    keys
    {
        key(PK ; "Primary Key")
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