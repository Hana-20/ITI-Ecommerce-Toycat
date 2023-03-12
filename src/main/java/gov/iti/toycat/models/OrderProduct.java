/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gov.iti.toycat.models;

import java.io.Serializable;
import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQueries;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 *
 * @author hanaa
 */
@Entity
@Table(name = "order_product")
@NamedQueries({
    @NamedQuery(name = "OrderProduct.findAll", query = "SELECT o FROM OrderProduct o")})
public class OrderProduct implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected OrderProductPK orderProductPK;
    @Basic(optional = false)
    @Column(name = "quantity")
    private int quantity;
    @JoinColumn(name = "order_id", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Order order1;
    @JoinColumn(name = "product_id", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Product product;

    public OrderProduct() {
    }

    public OrderProduct(OrderProductPK orderProductPK) {
        this.orderProductPK = orderProductPK;
    }

    public OrderProduct(OrderProductPK orderProductPK, int quantity) {
        this.orderProductPK = orderProductPK;
        this.quantity = quantity;
    }

    public OrderProduct(int orderId, int productId) {
        this.orderProductPK = new OrderProductPK(orderId, productId);
    }

    public OrderProductPK getOrderProductPK() {
        return orderProductPK;
    }

    public void setOrderProductPK(OrderProductPK orderProductPK) {
        this.orderProductPK = orderProductPK;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Order getOrder1() {
        return order1;
    }

    public void setOrder1(Order order1) {
        this.order1 = order1;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderProductPK != null ? orderProductPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderProduct)) {
            return false;
        }
        OrderProduct other = (OrderProduct) object;
        if ((this.orderProductPK == null && other.orderProductPK != null) || (this.orderProductPK != null && !this.orderProductPK.equals(other.orderProductPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "newpackage.OrderProduct[ orderProductPK=" + orderProductPK + " ]";
    }
    
}
