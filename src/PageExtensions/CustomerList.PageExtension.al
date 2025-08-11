pageextension 50101 CustomerList extends "Customer List"
{

    actions
    {
       addfirst("&Customer")
       {
        action(RewardLevels)
        {
            ApplicationArea = All;
            Caption = 'Reward Levels';
            //Image = RewardLevel;
            Image = CustomerRating;

            ToolTip = 'View the reward levels of customers.';
            Promoted = true;
            PromotedCategory = Process;
            PromotedIsBig = true;

            trigger OnAction()
            var CustomerRewardsExtMgt: Codeunit "Customer Rewards Ext. Mgt.";
            begin
                if CustomerRewardsExtMgt.IsCustomerRewardsActivated() then
                     CustomerRewardsExtMgt.OpenRewardsLevelPage
                else
                        CustomerRewardsExtMgt.OpenCustomerRewardsWizard;
                end
        }
       }
    }
}
