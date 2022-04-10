using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLVENTA
/// </summary>
public class BLLVENTA
{
    public BLLVENTA()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<VENTADTO> MostrarTodasVentas()
    {
        List<VENTADTO> listaVentas = new List<VENTADTO>();
        VentasDTSTableAdapters.VENTASTableAdapter adaptador = new VentasDTSTableAdapters.VENTASTableAdapter();
        VentasDTS.VENTASDataTable tabla = adaptador.MostrarVentaAll();
        foreach (VentasDTS.VENTASRow filas in tabla)
        {
            listaVentas.Add(RowVentas(filas));
        }
        return listaVentas;
    }
    private static VENTADTO RowVentas(VentasDTS.VENTASRow filas)
    {
        VENTADTO objVenta = new VENTADTO();
        objVenta.FOLIO = filas.FOLIO;
        objVenta.ID_PRODUCTO = filas.ID_PRODUCTO;
        objVenta.CANTIDAD = filas.CANTIDAD;
        objVenta.DESCRIPCION_VENTA = filas.DESCRIPCION_VENTA;
        return objVenta;
    }
    public static VENTADTO MostrarTodosID(int idVenta)
    {
        VentasDTSTableAdapters.VENTASTableAdapter adaptador = new VentasDTSTableAdapters.VENTASTableAdapter();
        VentasDTS.VENTASDataTable tabla = adaptador.MostrarVentaxID(idVenta);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowVentas(tabla[0]);
    }

    public static void insertar(string descrVenta,int folio,int idProduc,int cantidad,int pUnitario)
    {
        VentasDTSTableAdapters.VENTASTableAdapter adaptador = new VentasDTSTableAdapters.VENTASTableAdapter();
        adaptador.Insert(folio,idProduc,cantidad,pUnitario,descrVenta);
    }
}