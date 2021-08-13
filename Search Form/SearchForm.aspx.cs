using responsive.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Net.Http;
using System.Text;
using responsive.Global;
using ResponsiveWebAPI.Models;
using DocDTO = ResponsiveWebAPI.Models.DocDTO;

namespace responsive.Search_Form
{
   //SearchFormDTO
        
    public partial class SearchForm : System.Web.UI.Page
    {
        private SearchFormDTO oSearchFormDTO1 = new SearchFormDTO();
        public DocDTO oDocDTO1 = new DocDTO();
        List<SearchFormDTO> oSearchFormDTO = new List<SearchFormDTO>();
       // string value = Request.QueryString["val"];
        protected void Page_Load(object sender, EventArgs e)
        {
            //oDocDTO1.MyLocation = txtSearch.Text;
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            //oSearchFormDTO1.MyLocation = txtSearch.Text;
            //txtSearch.Text = oDocDTO1.MyLocation;

            // Session["loc"] = txtSearch.Text;
            //Response.Redirect("https://localhost:44339/Grid/DataGridForDoctors.aspx");
            if (txtSearch.Text != string.Empty)
            {
                Response.Redirect(string.Format("https://localhost:44339/Grid/DataGridForDoctors.aspx?MyLocation={0}", txtSearch.Text.ToString()), false);

            }        
        }

       


       
    }
}