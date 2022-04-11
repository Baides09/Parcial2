using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Template : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Label1.Text = Session["usuario"].ToString();
        }
        object varSess = Session["usuario"];
        if (varSess == null)
        {
            //SI EL OBJETO VIENE NULO SIGNIFICA QUE NO HA INICIADO SESION
            Response.Redirect("~/login.aspx");
        }
        else
        {
            Label1.Text = "Welcome " + Session["usuario"];
            int menu = 2;
            if (menu == 1)
            {
                //mostrarAdmin();
            }
            else
            {
                //mostrarAddRol();
            }
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/login.aspx");
    }
}
