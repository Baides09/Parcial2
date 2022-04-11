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
    public int GRUPO { get; set; }
    public string PATERNO { get; set; }
    public string MATERNO { get; set; }
    public bool VENTAS { get; set; }
    public bool ADMINISTRAR { get; set; }
    public bool REPORTES { get; set; }
    public bool CATALOGOS { get; set; }
    public bool CONSULTAS { get; set; }
    public bool DESHACER_VENTAS { get; set; }
    public bool LOGIN { get; set; }
    public bool FACTURACION { get; set; }
    public int ID_ROL { get; set; }
}