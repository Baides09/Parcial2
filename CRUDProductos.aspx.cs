using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CRUDProductos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int IDPRODUCTO = Convert.ToInt32(TxTID.Text);
        string descripcion = TxTDescripcion.Text;
        int cantidad = Convert.ToInt32(TxTCanti.Text);
        int precioUC = Convert.ToInt32(TxTPrUCom.Text);
        int precioUV = Convert.ToInt32(TxTVenta.Text);
        int departamento = Convert.ToInt32(DropDownList1.Text);
        try
        {
            if (string.IsNullOrEmpty(HiddenField1.Value))
            {
                BLLPRODUCTO.Insertar(IDPRODUCTO, descripcion, cantidad, precioUC, precioUV, departamento);
            }
            else
            {
                int IDRol = Convert.ToInt32(HiddenField1.Value);
                BLLPRODUCTO.Actualizar(IDPRODUCTO, descripcion, cantidad, precioUC, precioUV, departamento);
            }
        }
        catch (Exception ex)
        {

        }
    }
}