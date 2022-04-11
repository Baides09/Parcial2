using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AsignarRoles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int IDRol = Convert.ToInt32(TxTIdRol.Text);
        string NombreRol = TxTNombre.Text;
        try
        {
            if (string.IsNullOrEmpty(HiddenField1.Value))
            {
                BLLROL.Insertar(IDRol, NombreRol);
            }
            else
            {
                BLLROL.Actualizar(IDRol, NombreRol);
            }
        }
        catch(Exception ex)
        {

        }
    }
}