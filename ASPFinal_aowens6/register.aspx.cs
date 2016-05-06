using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPFinal_aowens6.Models;

namespace ASPFinal_aowens6
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAccess_Click(object sender, EventArgs e)
        {
            User user = new User();

            user.FirstName = txtFirstName.Text;
            user.LastName = txtLastName.Text;
            user.Username = txtUsername.Text;
            user.Email = txtEmail.Text;

            //cookies
            HttpCookie userInfoCookie;

            if(Request.Cookies["userInfo"] == null){
                userInfoCookie = new HttpCookie("userInfo");
                userInfoCookie.Values["firstName"] = user.FirstName;
                userInfoCookie.Values["lastName"] = user.LastName;
                userInfoCookie.Values["username"] = user.Username;
                userInfoCookie.Expires = DateTime.Now.AddMonths(1);
                Response.Cookies.Add(userInfoCookie);
            }
            else
            {
                userInfoCookie = Request.Cookies["userInfo"];
                userInfoCookie.Values["firstName"] = user.FirstName;
                userInfoCookie.Values["lastName"] = user.LastName;
                userInfoCookie.Values["username"] = user.Username;
                userInfoCookie.Expires = DateTime.Now.AddMonths(1);
                Response.Cookies.Add(userInfoCookie);
            }

            //application state

            //session state
            Session.Add("user", user);

            //Add user to db
            FrenchDbContext context = new FrenchDbContext();
            
            context.Users.Add(user);
            context.SaveChanges();

            //query strings
            Response.Redirect("/userProfile.aspx", false);
        }
    }
}