using Newtonsoft.Json;
using responsive.Global;
using responsive.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace responsive.login_form_14
{
    public partial class LoginFormFinal : System.Web.UI.Page
    {
        RESDTO oRESDTO = new RESDTO();
        LoginDTO oLoginDTO = new LoginDTO();
        protected void Page_Load(object sender, EventArgs e)
        {
            
           // oLoginDTO.Uname = "Peiris007";
        }

       // public void collectData()
       // {
            
         
       //    // var oRESDTO = GetUser(txtUsername.Text);
       //     oRESDTO.username = txtUsername.Text;
       //     oRESDTO.password = txtpassword.Text;
       // }

       //bool validate()

       // {
       //     if (txtUsername.Text == "admin" && txtpassword.Text=="123" )
       //     {
       //         Response.Write("Sucess!!");
                    
       //     }
       //     else
       //     {
       //         Response.Write("failed!!");
       //     }
       //     return false;
       // }

       

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           LoginDTO obloginDTO= GetUser(txtUsername.Text,txtpassword.Text);

            if (!String.IsNullOrEmpty(obloginDTO.Username) && !String.IsNullOrEmpty(obloginDTO.Password))
            {
               // Response.Write("Sucess!!");
                Response.Redirect("https://localhost:44339/Search%20Form/SearchForm.aspx");
            }
            else
            {
                //Response.Write("failed!!");
                Response.Write("<script>alert('Please Check Credentials!!')</script>");
            }

        }

        private LoginDTO GetUser(string Username,string Password)
        {
            LoginDTO results = new LoginDTO();
            using (HttpClient client = new HttpClient())
            {
                client.BaseAddress = new Uri(GlobalData.BaseURL);
                string path = GlobalData.BaseURL + "api/Login/GetUser?Username="+Username+"&Password="+ Password;

                var json = JsonConvert.SerializeObject(oLoginDTO);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = client.GetAsync(path).Result;
                if (response.IsSuccessStatusCode)
                {
                    String jsnString = response.Content.ReadAsStringAsync().Result;
                    results = JsonConvert.DeserializeObject<LoginDTO>(jsnString);
                }
            }
            return results;

        }

        protected void BtnSignNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44339/Pages/SignUp.aspx");
        }
    }
}