using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLDEPARTAMENTO
/// </summary>
public class BLLDEPARTAMENTO
{
    public BLLDEPARTAMENTO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<DTODEPARTAMENTO> MostrarTodos()
    {
        List<DTODEPARTAMENTO> ListarDepartamento = new List<DTODEPARTAMENTO>();
        DepartamentoDTSTableAdapters.DepartamentoTableAdapter adaptador = new DepartamentoDTSTableAdapters.DepartamentoTableAdapter();
        DepartamentoDTS.DepartamentoDataTable tabla = adaptador.MostrarDepartamentosAll();
        foreach (DepartamentoDTS.DepartamentoRow filas in tabla)
        {
            ListarDepartamento.Add(RowDepartamento(filas));
        }
        return ListarDepartamento;
    }

    private static DTODEPARTAMENTO RowDepartamento(DepartamentoDTS.DepartamentoRow filas)
    {
        DTODEPARTAMENTO objDepartamento = new DTODEPARTAMENTO();
        objDepartamento.ID_DEPARTAMENTO = filas.ID_DEPARTAMENTO;
        objDepartamento.DESCRI_DEPARTAMENTO = filas.DESCRI_DEPARTAMENTO;
        return objDepartamento;
    }
    public static DTODEPARTAMENTO MostraTodosID(int idDepartamento)
    {
        DepartamentoDTSTableAdapters.DepartamentoTableAdapter adapatador = new DepartamentoDTSTableAdapters.DepartamentoTableAdapter();
        DepartamentoDTS.DepartamentoDataTable tabla = adapatador.MostrarDepartamentoxID(idDepartamento);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowDepartamento(tabla[0]);
    }
    public static void Insertar(int idDepartamento, string descripcion)
    {
        DepartamentoDTSTableAdapters.DepartamentoTableAdapter adaptador = new DepartamentoDTSTableAdapters.DepartamentoTableAdapter();
        adaptador.Insert(idDepartamento,descripcion);
    }
    public static void Borrar(int idDepartamento)
    {
        DepartamentoDTSTableAdapters.DepartamentoTableAdapter adaptador = new DepartamentoDTSTableAdapters.DepartamentoTableAdapter();
        adaptador.Delete(idDepartamento);
    }
    public static void Actualizar(int idDepartamento, string descripcion)
    {
        DepartamentoDTSTableAdapters.DepartamentoTableAdapter adaptador = new DepartamentoDTSTableAdapters.DepartamentoTableAdapter();
        adaptador.Update(descripcion, idDepartamento);
    }
}