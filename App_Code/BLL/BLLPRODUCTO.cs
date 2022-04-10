using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de BLLPRODUCTO
/// </summary>
public class BLLPRODUCTO
{
    public BLLPRODUCTO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<PRODUCTODTO> MostrarTodos()
    {
        List<PRODUCTODTO> ListarProducto = new List<PRODUCTODTO>();
        ProductosDTSTableAdapters.PRODUCTOSTableAdapter adaptador = new ProductosDTSTableAdapters.PRODUCTOSTableAdapter();
        ProductosDTS.PRODUCTOSDataTable tabla = adaptador.MostrarProductosAll();
        foreach(ProductosDTS.PRODUCTOSRow filas in tabla)
        {
            ListarProducto.Add(RowProductos(filas));
        }
        return ListarProducto;
    }

    private static PRODUCTODTO RowProductos(ProductosDTS.PRODUCTOSRow filas)
    {
        PRODUCTODTO objProduct = new PRODUCTODTO();
        objProduct.ID_PRODUCTO = filas.ID_PRODUCTO;
        objProduct.DESCRI_PRODUCTO = filas.DESCRI_PRODUCTO;
        objProduct.CANTIDAD = filas.CANTIDAD;
        objProduct.P_U_COMPRA = filas.P_U_COMPRA;
        objProduct.P_U_VENTA = filas.P_U_VENTA;
        objProduct.ID_DEPARTAMENTO = filas.ID_DEPARTAMENTO;
        return objProduct;
    }
    public static PRODUCTODTO MostraTodosID(int idProduct)
    {
        ProductosDTSTableAdapters.PRODUCTOSTableAdapter adaptador = new ProductosDTSTableAdapters.PRODUCTOSTableAdapter();
        ProductosDTS.PRODUCTOSDataTable tabla = adaptador.MostrarProductosxID(idProduct);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        return RowProductos(tabla[0]);
    }
    public static void Insertar(int idProduct, string descr_product,int cantidad,int puCompra, int puVenta,int idDepa)
    {
        ProductosDTSTableAdapters.PRODUCTOSTableAdapter adaptador = new ProductosDTSTableAdapters.PRODUCTOSTableAdapter();
        adaptador.Insert(idProduct, descr_product, cantidad, puCompra, puVenta,idDepa);
    }
    public static void Borrar(int idProduct)
    {
        ProductosDTSTableAdapters.PRODUCTOSTableAdapter adaptador = new ProductosDTSTableAdapters.PRODUCTOSTableAdapter();
        adaptador.Delete(idProduct);
    }
    public static void Actualizar(int idProduct, string descr_product, int cantidad, int puCompra, int puVenta, int idDepa)
    {
        ProductosDTSTableAdapters.PRODUCTOSTableAdapter adaptador = new ProductosDTSTableAdapters.PRODUCTOSTableAdapter();
        adaptador.Update(descr_product, cantidad, puCompra, puVenta, idDepa, idProduct);
    }
}