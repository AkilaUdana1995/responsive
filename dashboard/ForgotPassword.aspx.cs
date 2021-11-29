using Newtonsoft.Json;
using responsive.Global;
using responsive.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace responsive.dashboard
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        ResetPWDDTO oResetPWDDTO = new ResetPWDDTO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void getEmail()
        {
            if(txtEmail.Text==string.Empty)
            {
                Response.Write("<script>alert('Please Enter Email')</script>");
            }
            else
            {

            }
        }

        protected void btnPwdReset_Click(object sender, EventArgs e)
        {
            getEmail();
            //LoginDTO obloginDTO = GetUser(txtUsername.Text, txtpassword.Text);

            //if (!String.IsNullOrEmpty(obloginDTO.Username) && !String.IsNullOrEmpty(obloginDTO.Password))
            //{
            //    // Response.Write("Sucess!!");
            //    Response.Redirect("https://localhost:44339/Search%20Form/SearchForm.aspx");
            //}
            //else
            //{
            //    //Response.Write("failed!!");
            //    Response.Write("<script>alert('Please Check Credentials!!')</script>");
            //}
        }


        //private ResetPWDDTO GetUser(string Email)
        //{
        //    LoginDTO results = new LoginDTO();
        //    using (HttpClient client = new HttpClient())
        //    {
        //        client.BaseAddress = new Uri(GlobalData.BaseURL);
        //        string path = GlobalData.BaseURL + "api/Login/GetUser?Username=" + Username + "&Password=" + Password;

        //        var json = JsonConvert.SerializeObject(oLoginDTO);
        //        var content = new StringContent(json, Encoding.UTF8, "application/json");
        //        HttpResponseMessage response = client.GetAsync(path).Result;
        //        if (response.IsSuccessStatusCode)
        //        {
        //            String jsnString = response.Content.ReadAsStringAsync().Result;
        //            results = JsonConvert.DeserializeObject<LoginDTO>(jsnString);
        //        }
        //    }
        //    return results;

        //}
    }
}