using responsive.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
//using Student_Management_System.Common;
//using Student_Management_System.Models;
//using System;
//using System.Collections.Generic;
//using System.Linq;
using System.Net.Http;
using System.Text;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
using responsive.Global;

namespace responsive
{
    public partial class Samplecase : System.Web.UI.Page
    {
        RESDTO oRESDTO = new RESDTO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //public bool validationCancelButton()
        //{
        //    if(txtId.Text==string.Empty && txtOwnername.Text==string.Empty)
        //        {
        //        Response.Write("<script>alert('Password fields does not Match!!')</script>");
        //        return true;
                          
        //        }
        //    return false;
        //}

        public void collectData()
        {
            oRESDTO.RESId = int.Parse(txtId.Text);
            oRESDTO.OwnerName = txtOwnername.Text;
            oRESDTO.PetName = TxtPetname.Text;
            oRESDTO.Breed = txtBreed.Text;
            oRESDTO.Email = txtEmail.Text;
            oRESDTO.Phone = int.Parse(txtTp.Text);
            oRESDTO.pickUsername = txtusername.Text;
            oRESDTO.EnterPassword = txtpassword.Text;
            oRESDTO.ReEnterPassWord = txtreenterpassword.Text;

            //oRESDTO.id = int.Parse(txtId.Text);
            //oRESDTO.name = txtBname.Text;
            //oRESDTO.age = int.Parse(txtAge.Text);
            bool isInserted = registerNewPet(oRESDTO);
        }
        //public void validatePassword()
        //{
        //    if(txtpassword.Text==txtreenterpassword.Text)
        //    {

        //    }
        //}

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (txtpassword.Text == txtreenterpassword.Text)
            {
                collectData();
                Response.Redirect("https://localhost:44339/login-form-14/LoginFormFinal.aspx");

            }
            else
            {
                Response.Write("<script>alert('Password fields does not Match!!')</script>");

            }
            //collectData();

        }
        private bool registerNewPet(RESDTO oRESDTO)
        {
            bool result = false;

            try
            {
                using (HttpClient client = new HttpClient())
                {
                    client.BaseAddress = new Uri(GlobalData.BaseURL);
                    string path = GlobalData.BaseURL + "RES/PostNewRES";
                    var json = JsonConvert.SerializeObject(oRESDTO);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    HttpResponseMessage response = client.PostAsync(path, content).Result;
                    if (response.IsSuccessStatusCode)
                    {
                        result = true;
                        Response.Write("<script>alert('Registration Sucess')</script>");
                        


                    }
                }
                return result;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public bool validation()
        {
            txtId.Text = string.Empty;
            txtOwnername.Text = string.Empty;
            TxtPetname.Text = string.Empty;
            txtBreed.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtTp.Text = string.Empty;
            txtusername.Text = string.Empty;
            txtpassword.Text = string.Empty;
            txtreenterpassword.Text = string.Empty;
            return true;
        }
        protected void cancel_Click(object sender, EventArgs e)
        {
            if(!validation())
            {
             //Response.Write("<script>alert('please fill out all feilds')</script>");
                
            }
            else
            {
                Response.Write("<script>alert('please fill out all feilds')</script>");
                //Response.Write("<script>alert('done!!')</script>");


            }
            //validationCancelButton();

        }
        //private bool PostNewUser(RESDTO oRESDTO)
        //{
        //    bool result = false;

        //    try
        //    {
        //        using (HttpClient client = new HttpClient())
        //        {
        //            client.BaseAddress = new Uri(GlobalData.BaseURL);
        //            string path = GlobalData.BaseURL + "RES/PostNewUser";
        //            var json = JsonConvert.SerializeObject(oRESDTO);
        //            var content = new StringContent(json, Encoding.UTF8, "application/json");

        //            HttpResponseMessage response = client.PostAsync(path, content).Result;
        //            if (response.IsSuccessStatusCode)
        //            {
        //                result = true;
        //                Response.Write("<script>alert('Record  Inserted!!!')</script>");
        //            }
        //            return result;
        //        }
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}
    }
}