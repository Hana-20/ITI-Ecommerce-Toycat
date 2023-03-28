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
public class CartItemPK implements Serializable {

    // @Basic(optional = false)
    // @Column(name = "cart_id")
    // private int cartId;

    @Basic(optional = false)
    @Column(name = "user_email", nullable = false)
    private String userEmail;

    @Basic(optional = false)
    @Column(name = "product_id", nullable = false)
    private int productId;

    public CartItemPK() {
    }

    public CartItemPK(String userEmail, int productId) {
        this.userEmail = userEmail;
        this.productId = productId;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
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
        hash += (userEmail != null ? userEmail.hashCode() : 0);
        hash += (int) productId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CartItemPK)) {
            return false;
        }
        CartItemPK other = (CartItemPK) object;
        if (this.userEmail != other.userEmail) {
            return false;
        }
        if (this.productId != other.productId) {
            return false;
        }
        return true;
    }

  
 

 
    
}
