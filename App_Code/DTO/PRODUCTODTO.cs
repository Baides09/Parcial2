using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de PRODUCTODTO
/// </summary>
public class PRODUCTODTO
{
    public PRODUCTODTO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int ID_PRODUCTO { get; set; }
    public string DESCRI_PRODUCTO { get; set; }
    public int CANTIDAD { get; set; }
    public int P_U_COMPRA { get; set; }
    public int P_U_VENTA { get; set; }
    public int ID_DEPARTAMENTO { get; set; }
}