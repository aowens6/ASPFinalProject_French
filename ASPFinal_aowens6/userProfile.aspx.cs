using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPFinal_aowens6
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Models.User user = (Models.User) Session["user"];
            HttpCookie cookie = Request.Cookies["userInfo"];
            string firstName = cookie.Values["firstName"];
            string lastName = cookie.Values["lastName"];
            string username = cookie.Values["username"];
            int score = user.score;
            int level = user.level;

            

            //info.InnerText = "Welcome " + user.FirstName;
            userFirstName.InnerText = firstName;
            userLastName.InnerText = lastName;
            userUsername.InnerText = username;
            userScore.InnerText = score.ToString();
            userLevel.InnerText = level.ToString();
        }
    }
}