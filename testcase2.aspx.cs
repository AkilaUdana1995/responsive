using Newtonsoft.Json;
using responsive.Global;
using ResponsiveWebAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace responsive
{
    public partial class testcase2 : System.Web.UI.Page
    {
        private testDTO otestDTO = new testDTO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var otestDTO = Getlist();
                GridView gvb = new GridView();
                gvb.DataSource = otestDTO;
                gvb.DataBind();
            }
        }



        private List<testDTO> Getlist()
        {
            List<testDTO> results = new List<testDTO>();
            using (HttpClient client = new HttpClient())
            {
                client.BaseAddress = new Uri(GlobalData.BaseURL);
                string path = GlobalData.BaseURL + "api/test1/Getlist";

                var json = JsonConvert.SerializeObject(otestDTO);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = client.GetAsync(path).Result;
                if (response.IsSuccessStatusCode)
                {
                    String jsnString = response.Content.ReadAsStringAsync().Result;
                    results = JsonConvert.DeserializeObject<List<testDTO>>(jsnString);
                }
            }
            return results;

        }
    }
}