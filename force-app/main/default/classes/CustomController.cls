public class CustomController {
    private Account account;

    public CustomController() {
        account = new Account();
    }

    public void loadAccount() {
        String accountId = ApexPages.currentPage().getParameters().get('id');
        if (String.isNotBlank(accountId)) {
            account = [SELECT Id, Name, Site FROM Account WHERE Id = :accountId];
        }
    }

    public Account getAccount() {
        return account;
    }

    public PageReference save() {
        update account;
        return null;
    }

    public PageReference deleteacc() {
        delete account;
        return null;
    }
}