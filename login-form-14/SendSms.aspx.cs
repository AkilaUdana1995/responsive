using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Ports;
using responsive.Models;
using System.Configuration;
//using System.Web.Mvc;
using Twilio;
//using Twilio.AspNet.Mvc;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using Twilio.TwiML;
//using Twilio.TwiML;
using System.Web.Mvc;

//using System.Web.Mvc;
using Twilio.AspNet.Mvc;
//using Twilio.TwiML.Mvc;
//using Twilio.TwiML;

using System.Web.Mvc;
using Twilio.AspNet.Mvc;
using Twilio.TwiML;
using Twilio.TwiML.Messaging;
using System.Net.Http;
using responsive.Global;
using Newtonsoft.Json;
using System.Text;

namespace responsive.login_form_14
{
    public partial class SendSms : System.Web.UI.Page
    {
        RESDTO oRESDTO = new RESDTO();
       // RecSMSDTO oRecSMSDTO = new RecSMSDTO();
       // SerialPort Sp = new SerialPort();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        //public void collectData()
        //{
        //    try
        //    {
        //        Sp.PortName = "COM12";
        //        Sp.Open();
        //        string ph_no;
        //        ph_no = char.ConvertFromUtf32(34) + TxtMobile.Text + char.ConvertFromUtf32(34);
        //        Sp.Write("AT+CMGF=1" + char.ConvertFromUtf32(13));
        //        Sp.Write("AT+CMGS=" + ph_no + char.ConvertFromUtf32(13));
        //        Sp.Write(txtMessage.Text + char.ConvertFromUtf32(26) + char.ConvertFromUtf32(13));
        //        Sp.Close();

        //        Response.Write("message sent");
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }

        //}

        public void collectdatafromUser()
        {
            oRESDTO.EnterSendersNumber = TxtMobile.Text;
            oRESDTO.EnterMessage = txtMessage.Text;
            sendSms();
           // Index();
          //  receiveSMS();

        }

      
        public string sendSms()

        {
            try
            {

                var accountSid = "AC7ca440d4e6aed022f0e1199f31642ca6"; /*ConfigurationManager.AppSettings["SK8ddd74506dae46878c4d3cc64876c750"];*/ // "SK8ddd74506dae46878c4d3cc64876c750";
                var authToken = "a5b08bb26a6b3580e8c34afc54cfff80";  //ConfigurationManager.AppSettings["HVwu0Gn5k8lgQezTZmaLK1XkZY37y73E"]; ////"HVwu0Gn5k8lgQezTZmaLK1XkZY37y73E";
                TwilioClient.Init(accountSid, authToken);  //initialise above accountSid and authToekn

                var to = new PhoneNumber(ConfigurationManager.AppSettings["+94766641017"]); //("+18012069555");
                var from = new PhoneNumber("+19165849239");
                var message = MessageResource.Create(
                   to: TxtMobile.Text.ToString(),      //"+94766641017",
                    from: "+19165849239",
                   body:txtMessage.Text.ToString());

                return message.Sid;
               // Response.Write("<script>alert('please enter value!!!')</script>");
            }
            catch (System.Exception ex)
            {

                throw ex;
            }
        }

        protected void btnSendSms_Click(object sender, EventArgs e)
        {
           // if()
           collectdatafromUser();
            Response.Write("<script>alert('your Message has sent to Doc!')</script>");
            Response.Redirect("~/cardpayment/PaymentForm.aspx");
            //  receiveSMS();
            //collectData();
        }


        //private bool SMS(RecSMSDTO oRecSMSDTO)
        //{
        //    bool result = false;

        //    try
        //    {
        //        using (HttpClient client = new HttpClient())
        //        {
        //            client.BaseAddress = new Uri(GlobalData.BaseURL);
        //            string path = GlobalData.BaseURL + "Sms/SMS";
        //            var json = JsonConvert.SerializeObject(oRecSMSDTO);
        //            var content = new StringContent(json, Encoding.UTF8, "application/json");
        //            HttpResponseMessage response = client.PostAsync(path, content).Result;
        //            if (response.IsSuccessStatusCode)
        //            {
        //                result = true;
        //                Response.Write("<script>alert('Registration Sucess')</script>");



        //            }
        //        }
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}

        //[HttpPost]
        //public string receiveSMS()
        //{
        //    try
        //    {
        //        //TwiMLResult oTwiMLResult = new TwiMLResult();
        //        var messagingResponse = new MessagingResponse();
        //        messagingResponse.Message("The Robots are coming! Head for the hills!");

        //        return messagingResponse.ToString();
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}

        //public class SmsController : TwilioController
        //{
        //    [HttpPost]
        //    public ActionResult Index(string From,string Body)
        //    {
        //       // var twiml= new TwilioResponse()


        //       var message = new Message();
        //      message.Body($"Hello {From}. you said {Body}");

        //         var messagingResponse = new MessagingResponse();
        //        // messagingResponse.Message(message);

        //         return TwiML(messagingResponse);
        //        //  var messagingResponse = new MessagingResponse();
        //        //  messagingResponse.Message("The Robots are coming! Head for the hills!");

        //        //  return TwiML(messagingResponse);
        //    }
        //}


    }
}