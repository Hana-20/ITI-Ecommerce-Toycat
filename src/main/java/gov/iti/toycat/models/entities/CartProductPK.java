/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gov.iti.toycat.models.entities;

import java.io.Serializable;
import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

/**
 *
 * @author hanaa
 */
@Embeddable
public class CartProductPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "cart_id")
    private int cartId;
    @Basic(optional = false)
    @Column(name = "product_id")
    private int productId;

    public CartProductPK() {
    }

    public CartProductPK(int cartId, int productId) {
        this.cartId = cartId;
        this.productId = productId;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) cartId;
        hash += (int) productId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CartProductPK)) {
            return false;
        }
        CartProductPK other = (CartProductPK) object;
        if (this.cartId != other.cartId) {
            return false;
        }
        if (this.productId != other.productId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gov.iti.toycat.models.entities.CartProductPK[ cartId=" + cartId + ", productId=" + productId + " ]";
    }
    
}
