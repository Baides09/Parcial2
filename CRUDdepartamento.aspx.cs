using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CRUDdepartamento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int IDDEPARTAMENTO = Convert.ToInt32(TxTDepa1.Text);
        string NombreDepa = TxTNombre.Text;
        try
        {
            if (string.IsNullOrEmpty(HiddenField1.Value))
            {
                BLLDEPARTAMENTO.Insertar(IDDEPARTAMENTO,NombreDepa);
            }
            else
            {
                int IDRol = Convert.ToInt32(HiddenField1.Value);
                BLLDEPARTAMENTO.Actualizar(IDDEPARTAMENTO, NombreDepa);
            }
        }
        catch (Exception ex)
        {

        }
    }
}