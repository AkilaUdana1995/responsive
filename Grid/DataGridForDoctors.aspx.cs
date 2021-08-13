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
//using testGetinput.Models;


namespace responsive.Grid
{
    public partial class DataGridForDoctors : System.Web.UI.Page
    {
        private DocDTO oDocDTO = new DocDTO();
        public SearchFormDTO oSearchFormDTO1 = new SearchFormDTO();
        //public SeeDocDTO oSeeDocDTO = new SeeDocDTO();
        List<DocDTO> oDocDTOx = new List<DocDTO>();
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblTemp.Text= Session["loc"].ToString();
            //GetInputFromUser();
            //oSearchFormDTOX = Getlist(Label1.Text);

            if (!IsPostBack)

            {
                ShowDetailsFromGrid();
               // Validation();

            }
        }

        public bool ShowDetailsFromGrid()
        {
            string MyLocation = Request.QueryString["MyLocation"];
            List<DocDTO> SeeAvailableDocs = Getlist(MyLocation);

            gvGrade.DataSource = SeeAvailableDocs;
            gvGrade.DataBind();
           // bool K
            return true;
        }


        //public bool Validation()
        //{
        //    try
        //    {
        //        if (!ShowDetailsFromGrid())
        //        {
        //            Response.Write("<script>alert('No available doctors now!')</script>");
        //            return true;
        //        }
        //        else 
        //        {
        //            //Response.Write("<script>alert('N!')</script>");

        //            return true;
        //        }
        //        //return false;

        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}



        private List<DocDTO> Getlist(string loc)
        {
            List<DocDTO> results = new List<DocDTO>();
            using (HttpClient client = new HttpClient())
            {
                client.BaseAddress = new Uri(GlobalData.BaseURL);
                string path = GlobalData.BaseURL + "api/doc1/Getlist?Location=" + loc;

                var json = JsonConvert.SerializeObject(oDocDTO);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = client.GetAsync(path).Result;
                if (response.IsSuccessStatusCode)
                {
                    String jsnString = response.Content.ReadAsStringAsync().Result;
                    results = JsonConvert.DeserializeObject<List<DocDTO>>(jsnString);
                }
            }
            return results;

        }

        protected void gvGrade_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "SelectRecord")
                {
                    int rowIndex = Convert.ToInt32(e.CommandArgument);
                    GridViewRow row = gvGrade.Rows[rowIndex];
                    Label NameOfDoc = (Label)row.FindControl("NameOfDoc");
                    Label TpNumber = (Label)row.FindControl("TpNumber");
                    Label NameOfClinic = (Label)row.FindControl("NameOfClinic");
                    if (NameOfDoc != null)
                    {
                        Response.Redirect(string.Format("ViewSelectedDoc.aspx?NameOfDoc={0}&TpNumber={1}&NameOfClinic={2}", NameOfDoc.Text.ToString(), TpNumber.Text.ToString(), NameOfClinic.Text.ToString()), false);
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}