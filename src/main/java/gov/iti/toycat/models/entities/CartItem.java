/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gov.iti.toycat.models.entities;

import java.io.Serializable;
import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
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
@Table(name = "cart_item")

public class CartItem implements Serializable {

    private static final long serialVersionUID = 1L;

    @EmbeddedId
    protected CartItemPK cartProductId;

    @Basic(optional = false)
    @Column(name = "quantity")
    private int quantity;

    // @ManyToOne(optional = false)
    // @JoinColumn(name = "cart_id", referencedColumnName = "id",insertable=false, updatable=false)
    // private Cart cart;

    @ManyToOne(optional = false)
    @JoinColumn(name = "product_id", referencedColumnName = "id",insertable=false, updatable=false)
    // @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @ManyToOne(optional = false)
    @JoinColumn(name = "user_email", referencedColumnName = "email",insertable=false, updatable=false)
    // @JoinColumn(name = "user_id", nullable = false)
    private User user;

    public CartItem() {
    }



    public CartItem(CartItemPK cartProductId) {
        this.cartProductId = cartProductId;
    }



    public CartItemPK getCartProductId() {
        return cartProductId;
    }



    public void setCartProductId(CartItemPK cartProductId) {
        this.cartProductId = cartProductId;
    }



    public int getQuantity() {
        return quantity;
    }



    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }



    public User getUser() {
        return user;
    }



    public void setUser(User user) {
        this.user = user;
    }



    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cartProductId != null ? cartProductId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CartItem)) {
            return false;
        }
        CartItem other = (CartItem) object;
        if ((this.cartProductId == null && other.cartProductId != null) || (this.cartProductId != null && !this.cartProductId.equals(other.cartProductId))) {
            return false;
        }
        return true;
    }



    public static long getSerialversionuid() {
        return serialVersionUID;
    }


 
    
}
