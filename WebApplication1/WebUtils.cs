using System;
using System.Web;
using System.Threading;
using System.Globalization;

namespace JourneymanWeb
{
    public class WebUtils
    {
        private static bool selectLanguage(String ASelectedLanguage)
        {
            HttpResponse Response = System.Web.HttpContext.Current.Response;
            bool Result = false;
            try
            {
                String selectedLanguage = ASelectedLanguage.ToLower();
                if (selectedLanguage.ToLower() == "zh")
                {
                    Result = true;
                    selectedLanguage = "zh-SG";
                    Thread.CurrentThread.CurrentCulture =
                        CultureInfo.CreateSpecificCulture(selectedLanguage);
                    Thread.CurrentThread.CurrentUICulture = new
                        CultureInfo(selectedLanguage);
                }
                else
                    if (selectedLanguage == "en")
                    {
                        Result = true;
                        selectedLanguage = "en-GB";
                        Thread.CurrentThread.CurrentCulture =
                            CultureInfo.CreateSpecificCulture(selectedLanguage);
                        Thread.CurrentThread.CurrentUICulture = new
                            CultureInfo(selectedLanguage);
                    }
                Response.Cookies["hl"].Value = selectedLanguage;
                Response.Cookies["hl"].Expires = DateTime.Now.AddDays(90d);
            }
            catch
            {
            }
            return Result;
        }

        public static void detectLang()
        {
            HttpRequest Request = System.Web.HttpContext.Current.Request;
            // lang is support for my own site
            string[] searchFields = new string[] { "lang", "hl" };
            // below is from mobile phone
            //              2011-05-07 14:45:04 GET / - 112.199.174.151 Mozilla/5.0+(iPhone;+U;+CPU+iPhone+OS+4_2_1+like+Mac+OS+X;+zh-cn)+AppleWebKit/533.17.9+(KHTML,+like+Gecko)+Mobile/8C148 - http://r.admob.com:80/ad_source.php?u_h=480&prl=11547&js=afma-sdk-i-v4.0.2&u_sd=2&preqs=360&isu=E104B9FD2A61D3E7FE164728511CF630&u_so=p&platform=iPhone&net=ed&app_name=1.5.iphone.com.cronlygames.fruitlink&ptime=81249644&slotname=a14d85daa45532a&u_audio=1&hl=zh-hans&u_w=320&submodel=iPhone3%2C1&format=320x50_mb&msid=420318724&output=html&region=mobile_app&u_tz=-480&ex=1&client_sdk=1&askip=0&ms=fRskVppY4Bgk5DlKxlAgmuupqZnipGV5zKmoO1zD_msxWVcmshmo9vtk-IJt8qGmU16ku-A8NpdcZBwefoMqxILasJ6zviVOqPrcCLPoCfSMG8jhzUsY6mc2HyWZ2bDwe78XqioxsAjbSfgqKbytUgare8Y9yR3wNVdyQ-P12_InP0xG6s5NCZq76_Pzhb-xKWxu_WK6Qej6f9DyNefW1eoDmQxnWlHVn3K6OzvX_TG2SLMA_nYBvFuJRkykbh3KLMCNym4MgD5E0ySMrQa5OElW1DJKmGIV2Kk2Lgi0pK7o-dONcfX_AAXYuN75J53vJq1I56VSNBYi1M1IzOh_9Q 200 0 0 3753 1153 67
            bool LangSelected = false;
            String selectedLanguage = null;
            foreach (string searchField in searchFields)
            {
                String Lang = Request.QueryString[searchField];
                if (Lang != null)
                {
                    selectedLanguage = Lang.Substring(0, 2);
                    LangSelected = selectLanguage(selectedLanguage);
                    if (LangSelected) break;
                }
            }
            if (!LangSelected)
            {
                HttpCookie cookieLang = Request.Cookies["hl"];
                if (cookieLang != null)
                {
                    selectedLanguage = cookieLang.Value;
                    if (selectedLanguage != null)
                    {
                        selectedLanguage = selectedLanguage.Substring(0, 2);
                    }
                    LangSelected = selectLanguage(selectedLanguage);
                }
            }
            if (!LangSelected)
            {
                String[] userLang = Request.UserLanguages;
                if (userLang != null)
                {
                    selectedLanguage = userLang[0].Substring(0, 2);
                    LangSelected = selectLanguage(selectedLanguage);
                }
            }
        }

        public static void updateCookies()
        {
            HttpRequest Request = System.Web.HttpContext.Current.Request;
            HttpResponse Response = System.Web.HttpContext.Current.Response;
            HttpCookie newGuid = Request.Cookies["id"];
            if (newGuid == null)
            {
                newGuid = new HttpCookie("id", Guid.NewGuid().ToString());
            }
            newGuid.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Set(newGuid);
            HttpCookie mra = Request.Cookies["mra"];
            HttpCookie lv = Request.Cookies["lv"];
            if (mra == null)
            {
                mra = new HttpCookie("mra");
                mra.Expires = DateTime.Now.AddYears(1);
            }
            else
            {
                if (lv == null)
                    lv = new HttpCookie("lv", mra.Value);
            }
            if (lv != null)
            {
                lv.Value = mra.Value; 
                lv.Expires = DateTime.Now.AddYears(1);
                Response.Cookies.Set(lv);
            }
            CultureInfo ci = new CultureInfo("en-GB");
            mra.Value = DateTime.Now.ToString("d MMM yyyy h:mm:ss tt", ci);
            mra.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Set(mra);
        }

        public static void showLang()
        {
            HttpRequest Request = System.Web.HttpContext.Current.Request;
            HttpResponse Response = System.Web.HttpContext.Current.Response;
            Response.Write("<!-- " + '\n');
            String[] userLang = Request.UserLanguages;
            HttpCookie hl = Request.Cookies["hl"];
            if (hl != null)
            {
                CultureInfo ci = new CultureInfo("en-GB");
                String res1 = String.Format("Cookie:'{0}', Expires: {1}\n", new Object[] { hl.Value, hl.Expires.ToString("d MMM yyyy h:mm:ss tt", ci)});
                Response.Write(res1);
            }
            if (userLang != null)
            {

                int count = 0;
                foreach (String Lang in userLang)
                {
                    Response.Write("User Language " + ++count + ": " + Lang + "<br>" + '\n');
                }
            }
            else
            {
                // Could be a web crawler
                Response.Write("No UserLanguages");
            }
            Response.Write("-->" + '\n');
        }

    }
}
