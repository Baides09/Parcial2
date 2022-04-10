using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLUSUARIO
/// </summary>
public class BLLUSUARIO
{
    public BLLUSUARIO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<USUARIODTO> MostrarTodosUsuario()
    {
        List<USUARIODTO> ListarUsuario = new List<USUARIODTO>();
        UsuarioDTSTableAdapters.UsuarioTableAdapter adaptador = new UsuarioDTSTableAdapters.USERSTableAdapter();
        UsuarioDTS.UsuarioDataTable tabla = adaptador.MostrarUsuariosAll();
        foreach (UsuarioDTS.UsuarioRow filas in tabla)
        {
            ListarUsuario.Add(RowUser(filas));
        }
        return ListarUsuario;
    }
    private static USUARIODTO RowUser(UsuarioDTS.UsuarioRow filas)
    {
        USUARIODTO objUser = new USUARIODTO();
        objUser.USER_NAME = filas.USER_NAME;
        objUser.USER_PASSWORD = filas.USER_PASSWORD;
        objUser.GRUPO = filas.GRUPO;
        objUser.PATERNO = filas.PATERNO;
        objUser.MATERNO = filas.MATERNO;
        return objUser;
    }
    public static USUARIODTO MostrarTodosID(string Username)
    {
        UsuarioDTSTableAdapters.UsuarioTableAdapter adaptador = new UsuarioDTSTableAdapters.UsuarioTableAdapter();
        UsuarioDTS.UsuarioDataTable tabla = adaptador.MostrarUsuarioxID(Username);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowUser(tabla[0]);
    }

    public static void Insertar(string userName, string userPssw,int grupo,string padre, string madre,int idRol)
    {
        UsuarioDTSTableAdapters.UsuarioTableAdapter adaptador = new UsuarioDTSTableAdapters.UsuarioTableAdapter();
        adaptador.Insert(userName,userPssw,grupo,padre,madre,idRol);
    }
    public static void Borrar(string userName)
    {
        UsuarioDTSTableAdapters.UsuarioTableAdapter adaptador = new UsuarioDTSTableAdapters.UsuarioTableAdapter();
        adaptador.Delete(userName);
    }
    public static void Actualizar(string userName, string userPssw, int grupo, string padre, string madre, int idRol)
    {
        UsuarioDTSTableAdapters.UsuarioTableAdapter adaptador = new UsuarioDTSTableAdapters.UsuarioTableAdapter();
        adaptador.Update(userPssw,grupo,padre,madre,idRol,userName);
    }
}