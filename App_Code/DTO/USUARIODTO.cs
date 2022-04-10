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
}