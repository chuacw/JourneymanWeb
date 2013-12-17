using System;
using System.Collections;
using System.Web;

namespace JourneymanWeb
{
    public partial class testCookies : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList colCookies = new ArrayList();
            for (int i = 0; i < Request.Cookies.Count; i++)
                colCookies.Add(Request.Cookies[i]);
            grdCookies.DataSource = colCookies;
            grdCookies.DataBind();

            String hl = Request.QueryString["hl"];
            if (hl != null)
            {
                HttpCookie newLang = new HttpCookie("hl", hl);
                newLang.Expires = DateTime.Now.AddYears(1);
                Response.Cookies.Add(newLang);
            }
            WebUtils.updateCookies();

        }
    }
}
