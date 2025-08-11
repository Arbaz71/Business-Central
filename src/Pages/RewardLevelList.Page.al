page 50101 "Reward Level List"
{
    PageType = List;
    SourceTable = "Reward Level";
    ApplicationArea = All;
    Caption = 'Reward Levels';
    SourceTableView = sorting("Minimum Reward Points") order(ascending);
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Level; Rec.Level)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the level of the reward that the customer has at this point.';
                }
                field("Minimum Reward Points"; Rec."Minimum Reward Points")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the minimum number of reward points required to achieve this level.';
                }
            }
        }
    }

    //  trigger OnOpenPage(); 
    // begin 

    //     if not CustomerRewardsExtMgt.IsCustomerRewardsActivated then 
    //         Error(NotActivatedTxt); 
    // end; 

    // var 
    //     CustomerRewardsExtMgt: Codeunit "Customer Rewards Ext. Mgt."; 
    //     NotActivatedTxt: Label 'Customer Rewards is not activated'; 
}