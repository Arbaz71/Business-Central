pageextension 50100 CustomerCard extends "Customer Card"
{
    layout
    {
         addafter(Name) 
        {
            field(RewardLevel; Rec.RewardLevel)
            {
                ApplicationArea = All;
                Caption = 'Reward Level';
                ToolTip = 'The reward level of the customer.';
                Description = 'Reward level of the customer.'; 
                Visible = true;
                Editable = false;
            }
            
                field(RewardPoints; Rec.RewardPoints)
                {
                    ApplicationArea = All;
                    Caption = 'Reward Level';
                    ToolTip = 'The reward level of the customer.';
                    Editable = false;
                }
            }
        }
    

    actions
    {
        // Add custom actions here if needed
    }
    // trigger OnAfterGetRecord()
    // var
    //     CustomerRewardsMgtExt: Codeunit "Customer Rewards Ext. Mgt";
    // begin
    //     RewardLevel := CustomerRewardsMgtExt.GetRewardLevel(Rec.RewardPoints);");
    // end;
}
