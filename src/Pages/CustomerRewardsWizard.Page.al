page 50100 "Customer Rewards Wizard"
{
    

    layout
    {
        area(Content)
        {
            group(General)
            {
                
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ManageRewards)
            {
                ApplicationArea = All;
                Caption = 'Manage Rewards';
                Image = Manage;
                
                trigger OnAction()
                begin
                    // Logic to manage rewards goes here
                end;
            }
        }
    }

    var
        Customer: Record Customer;
        RewardPoints: Integer;
}

    
    
   