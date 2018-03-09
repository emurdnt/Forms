
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; //use control (dot) to have these
using WebApp.FormSamples.Classes; // two things because they exist in different namespaces

partial class FormSamples_CreateBankAccount
    : System.Web.UI.Page
{
    private static List<BankAccount> BankAccounts = new List<BankAccount>();
    protected void Page_Load(Object sender, EventArgs e)
    {
        //page_load happens before any individual control events
        //it's a great point in time of the page's page life cycle to go ahead and populate the form's controls on the first visit to the page.

        if (!IsPostBack)
        {
            BankAccountGridView.DataSource = BankAccounts;
            BankAccountGridView.DataBind();
        }

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        //validation on the server side
        if (IsValid) // IsValid is a property on the page that checks with the validation controls to ensure that the data in the controls passes all the validation.
        {
            if (IsDuplicate())
            {
                MessageLabel.Text = "That account number has already been taken.";
            }
            else
            {
                MessageLabel.Text = "Your new bank account will be processed soon.";
                BankAccount data = new BankAccount
                //the following is an initializer list
                {
                    AccountHolder = AccountHolder.Text,
                    AccountNumber = long.Parse(AccountNumber.Text),
                    OpeningBalance = decimal.Parse(OpeningBalance.Text),
                    AccountType = AccountType.Text
                };

                BankAccounts.Add(data);
                BankAccountGridView.DataSource = BankAccounts;
                BankAccountGridView.DataBind();

            }

        }
        // else....
        //      The ValidationSummary will automatically display its contents should the IsValid check return False.
    }
    protected void ClearForm_Click(object sender, EventArgs e)
    {
        // Empty out all the values of the textboxes, etc.
        AccountHolder.Text = "";
        AccountNumber.Text = "";
        OverdraftLimit.Text = "";
        OpeningBalance.Text = "";
        // To "clear" a DropDownList, RadioButtonList, or CheckBoxList, you would change the .SelectedValue
        AccountType.SelectedValue = "";
        // (Alternatively, I could have changed the .SelectedIndex instead)
        AccountType.SelectedIndex = -1; // -1, just in case there are no items in the control

    }

    private bool IsDuplicate()
    {
        bool duplicate = false;
        foreach (var item in BankAccounts)
        {
            if (item.AccountNumber == long.Parse(AccountNumber.Text))
            {
                duplicate = true;
            }
        }

        return duplicate;
    }
}
