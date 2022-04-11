using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CRUDVentas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int folio = Convert.ToInt32( TxTFolio.Text);
        int idProducto = Convert.ToInt32(DropDownList1.Text);
        int cant = Convert.ToInt32(TxTCantidad.Text);
        int precioU = Convert.ToInt32(TxTPrcU.Text);
        string descripcion = TxTDescri.Text;
        try
        {
            if (string.IsNullOrEmpty(HiddenField1.Value))
            {
                BLLVENTA.insertar(descripcion, folio, idProducto, cant, precioU);
            }
            else
            {
               //NO SE GENERA PROCEDIMIENTO DE ACTUALIZAR VENTAS
            }
        }
        catch (Exception ex)
        {

        }
    }
}