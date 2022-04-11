using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = TxtUser.Text;
        string pass = TextPass.Text;
        USUARIODTO userautenticado = BLLUSUARIO.MostrarLogin(user, pass);
        if (userautenticado == null)
        {

        }
        else
        {
            Session["usuario"] = user;
            Response.Redirect("~/Principal.aspx");
        }
        
    }
}
