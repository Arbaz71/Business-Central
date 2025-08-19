codeunit 50101 "Customer Rewards Ext. Mgt"
{
    EventSubscriberInstance = StaticAutomatic;
    procedure IsCustomerRewardsActivated(): Boolean;
    var
       ActivationCodeInformation: Record ActivationCodeInformation;
       begin
        if not ActivationCodeInformation.FindFirst() then
            exit(false);

        if (ActivationCodeInformation.DateActivated<=Today) and (Today<=ActivationCodeInformation.ExpirationDate) then
            exit(true);
        exit(false);
    end;

    procedure OpenCustomerRewardsWizard();
    var
        CustomerRewardsWizard:Page "Customer Rewards Wizard";

        begin
            CustomerRewardsWizard.RunModal();
        end;
    procedure OpenRewardLevelPage();
     var
        CustomerRewardsWizard: Page "Customer Rewards Wizard";
    begin
        CustomerRewardsWizard.RunModal();
    end;
procedure GetRewardLevels(RewardPoints:Integer)RewardLevelTxt: Text;
var
RewardLevel:Record"Reward Level";
MindRewardLevelPoints:Integer;
begin

end;


    trigger OnRun()
    begin
        
    end;
    
    var
        myInt: Integer;
}