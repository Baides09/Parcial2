using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLROL
/// </summary>
public class BLLROL
{
    public BLLROL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<ROLDTO> MostrarTodosRoles()
    {
        List<ROLDTO> ListarRoles = new List<ROLDTO>();
        RolesDTSTableAdapters.ROLESTableAdapter adaptador = new RolesDTSTableAdapters.ROLESTableAdapter();
        RolesDTS.ROLESDataTable tabla = adaptador.MostrarTodosRol();
        foreach(RolesDTS.ROLESRow filas in tabla)
        {
            ListarRoles.Add(RowRoles(filas));
        }
        return ListarRoles;
    }
    private static ROLDTO RowRoles(RolesDTS.ROLESRow filas)
    {
        ROLDTO objRol = new ROLDTO();
        objRol.ID_ROL = filas.ID_ROL;
        objRol.TIPO_ROL = filas.TIPO_ROL;
        return objRol;
    }
    public static ROLDTO MostrarTodosID(int IDRoles)
    {
        RolesDTSTableAdapters.ROLESTableAdapter adaptador = new RolesDTSTableAdapters.ROLESTableAdapter();
        RolesDTS.ROLESDataTable tabla = adaptador.MostrarRolesxID(IDRoles);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowRoles(tabla[0]);
    }
    public static void Insertar(int idRol,string nomRol)
    {
        RolesDTSTableAdapters.ROLESTableAdapter adaptador = new RolesDTSTableAdapters.ROLESTableAdapter();
        adaptador.Insert(idRol,nomRol);
    }
    public static void Borrar(int codRol)
    {
        RolesDTSTableAdapters.ROLESTableAdapter adaptador = new RolesDTSTableAdapters.ROLESTableAdapter();
        adaptador.Delete(codRol);
    }
    public static void Actualizar(int codRol, string nomRol)
    {
        RolesDTSTableAdapters.ROLESTableAdapter adaptador = new RolesDTSTableAdapters.ROLESTableAdapter();
        adaptador.Update(nomRol, codRol);
    }
}