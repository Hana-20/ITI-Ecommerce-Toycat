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
@Table(name = "cart_product", catalog = "toycat", schema = "")
@NamedQueries({
    @NamedQuery(name = "CartProduct.findAll", query = "SELECT c FROM CartProduct c")})
public class CartProduct implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CartProductPK cartProductPK;
    @Basic(optional = false)
    @Column(name = "quantity")
    private int quantity;
    @JoinColumn(name = "cart_id", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Cart cartId1;
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Product productId1;

    public CartProduct() {
    }

    public CartProduct(CartProductPK cartProductPK) {
        this.cartProductPK = cartProductPK;
    }

    public CartProduct(CartProductPK cartProductPK, int quantity) {
        this.cartProductPK = cartProductPK;
        this.quantity = quantity;
    }

    public CartProduct(int cartId, int productId) {
        this.cartProductPK = new CartProductPK(cartId, productId);
    }

    public CartProductPK getCartProductPK() {
        return cartProductPK;
    }

    public void setCartProductPK(CartProductPK cartProductPK) {
        this.cartProductPK = cartProductPK;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Cart getCartId1() {
        return cartId1;
    }

    public void setCartId1(Cart cartId1) {
        this.cartId1 = cartId1;
    }

    public Product getProductId1() {
        return productId1;
    }

    public void setProductId1(Product productId1) {
        this.productId1 = productId1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cartProductPK != null ? cartProductPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CartProduct)) {
            return false;
        }
        CartProduct other = (CartProduct) object;
        if ((this.cartProductPK == null && other.cartProductPK != null) || (this.cartProductPK != null && !this.cartProductPK.equals(other.cartProductPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gov.iti.model.CartProduct[ cartProductPK=" + cartProductPK + " ]";
    }
    
}
