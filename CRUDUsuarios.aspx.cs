using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CRUDUsuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        string user = TxtUser.Text;
        string pass = TxTPass.Text;
        int group = Convert.ToInt32(TxTGrupo.Text);
        string ApePaterno = TxTApePaterno.Text;
        string ApeMaterno = TxTApeMaterno.Text;
        bool ventas = Convert.ToBoolean(CheckBox1.Checked);
        bool admin = Convert.ToBoolean(CheckBox2.Checked);
        bool report = Convert.ToBoolean(CheckBox3.Checked);
        bool catalogo = Convert.ToBoolean(CheckBox4.Checked);
        bool consultas = Convert.ToBoolean(CheckBox5.Checked);
        bool desha_venta = Convert.ToBoolean(CheckBox6.Checked);
        bool login = Convert.ToBoolean(CheckBox7.Checked);
        bool factu = Convert.ToBoolean(CheckBox8.Checked);
        int Rol = Convert.ToInt32(DropDownList1.Text);
        try
        {
            if (string.IsNullOrEmpty(HiddenField1.Value))
            {
                BLLUSUARIO.Insertar(user, pass, group, ApePaterno, ApeMaterno, ventas, admin, report, catalogo, consultas, desha_venta, login, factu, Rol);
            }
            else
            {
                int IDRol = Convert.ToInt32(HiddenField1.Value);
                BLLUSUARIO.Actualizar(user, pass, group, ApePaterno, ApeMaterno, ventas, admin, report, catalogo, consultas, desha_venta, login, factu, Rol);
            }
        }
        catch (Exception ex)
        {

        }
    }
}