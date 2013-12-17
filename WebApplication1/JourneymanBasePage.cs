
namespace JourneymanWeb
{
    public class JourneymanBasePage : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            WebUtils.detectLang();
            base.InitializeCulture();
            WebUtils.updateCookies();
        }

    }
}
