using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Stripe;

namespace paymentGateway.cardpayment
{
    public partial class PaymentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSumbit_Click(object sender, EventArgs e)
        {

            try
            {
                StripeCustomer current = GetCustomer();
                // int? days = getaTraildays();  
                //if (days != null)  
                //{  
                int chargetotal = 100;//Convert.ToInt32((3.33*Convert.ToInt32(days)*100));  
                var mycharge = new StripeChargeCreateOptions();
                mycharge.AmountInCents = chargetotal;
                mycharge.Currency = "USD";
                mycharge.CustomerId = current.Id;
                string key = "sk_test_51J7EAKHEUh3A0k5PZxtf9SQ5S73GxObQvo0HUGUDIgTNPQnEDw0ZCU7OpsFIfLqDYqyRGoZzFmioELAWg7kqWhqf00gXx1oLer";
                var chargeservice = new StripeChargeService(key);
                StripeCharge currentcharge = chargeservice.Create(mycharge);
                // Response.Write("Sucsuess");
                // Response.Redirect("aftercard.aspx");
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        private StripeCustomer GetCustomer()
        {
            try
            {
                var mycust = new StripeCustomerCreateOptions();
                mycust.Email = txteMail.Text;
                mycust.Description = "Rahul Pandey(rahul@gmail.com)";
                mycust.CardNumber = txtCardNumber.Text;   //"4111111111111111";  //here added temporary credit card
                mycust.CardExpirationMonth = txtExPMM.Text;    //fake expire date
                mycust.CardExpirationYear = txtExYY.Text; //"2030";    //fake cvc
                // mycust.PlanId = "100";  
                mycust.CardName = txtCardOwner.Text;  //"Rahul Pandey";
                mycust.CardAddressCity = "ABC";
                mycust.CardAddressCountry = "USA";
                mycust.CardAddressLine1 = "asbcd";
                //mycust.TrialEnd = getrialend();  
                var customerservice = new StripeCustomerService("sk_test_51J7EAKHEUh3A0k5PZxtf9SQ5S73GxObQvo0HUGUDIgTNPQnEDw0ZCU7OpsFIfLqDYqyRGoZzFmioELAWg7kqWhqf00gXx1oLer");
                return customerservice.Create(mycust);

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}