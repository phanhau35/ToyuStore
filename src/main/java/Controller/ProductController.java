/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Manufacturer;
import Entity.Product;
import Entity.ProductType;
import Manager.ProductManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author phanh
 */
@WebServlet(name = "product", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String path = "products";
        int page;
        int start;
        int end;
        if (request.getParameter("path") != null) {
            path = "index.jsp";
        }
        String id = request.getParameter("id");
        String pageNumber = request.getParameter("page");
        if (pageNumber != null) {
            page = Integer.parseInt(pageNumber);
        } else {
            page = 1;
        }
        start = (page - 1) * 9;
        end = start + 9 - 1;
        List<Product> productList = (List<Product>) request.getAttribute("productList");
        List<Product> allProductList = (List<Product>) request.getAttribute("allProductList");

        ProductManager productManager = new ProductManager();

        if (id != null) {
            path = "Detail";
            Product requestProduct = productManager.getProduct(Integer.parseInt(id));
            Set<ProductType> productTypes = requestProduct.getTypes();
            Set<Manufacturer> productManufacturers = requestProduct.getManufacturers();
            request.setAttribute("productTypes", productTypes);
            request.setAttribute("productManufacturers", productManufacturers);
            request.setAttribute("product", requestProduct);
        } else if (productList == null || allProductList == null) {
            productList = productManager.getActiveProducts();
            allProductList = productManager.getAllProducts();
            request.setAttribute("productList", productList);
            request.setAttribute("allProductList", allProductList);
        }
        if (productList != null) {
            float pages = productList.size() / 9;
            pages = (float) Math.ceil(pages);
            int pageAmount = (int) pages;
            request.setAttribute("pages", pageAmount);
        }
        request.setAttribute("start", start);
        request.setAttribute("end", end);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
