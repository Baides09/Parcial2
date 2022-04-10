using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de USUARIODTO
/// </summary>
public class USUARIODTO
{
    public USUARIODTO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public string USER_NAME { get; set; }
    public string USER_PASSWORD { get; set; }
    public string GRUPO { get; set; }
    public string PATERNO { get; set; }
    public string MATERNO { get; set; }
    public byte VENTAS { get; set; }
    public byte REPORTES { get; set; }
    public byte ADMINISTRAR { get; set; }
    public byte CATALOGOS { get; set; }
    public byte CONSULTAS { get; set; }
    public byte DESCHACER_VENTA { get; set; }
    public byte LOGIN { get; set; }
    public byte FACTURACION { get; set; }
    public byte ID_ROL { get; set; }
}