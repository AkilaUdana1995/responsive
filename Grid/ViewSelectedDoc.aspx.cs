using responsive.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace responsive.Grid
{
    public partial class ViewSelectedDoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string NameOfDoc = Request.QueryString["NameOfDoc"];
                string TpNumber = Request.QueryString["TpNumber"];
                string NameOfClinic = Request.QueryString["NameOfClinic"];
                DocDTO oDocDTO = new DocDTO();
                oDocDTO.NameOfDoc = NameOfDoc;
                oDocDTO.TpNumber = TpNumber;
                oDocDTO.NameOfClinic = NameOfClinic;
                try
                {
                    if (oDocDTO != null)
                    {
                        List<DocDTO> results = new List<DocDTO>();
                        results.Add(oDocDTO);
                        GVSelectedDoc.DataSource = results;
                        GVSelectedDoc.DataBind();



                    }
                }
                catch (Exception ex )
                {

                    throw ex;
                }
            }
        }

        protected void btnAppoint_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44339/login-form-14/SendSms.aspx");
        }
    }
}