// /*
//  * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
//  * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
//  */
// package gov.iti.toycat.models.entities;

// import java.io.Serializable;
// import jakarta.persistence.Basic;
// import jakarta.persistence.Column;
// import jakarta.persistence.Embeddable;

// /**
//  *
//  * @author hanaa
//  */
// @Embeddable
// public class OrderProductPK implements Serializable {

//     @Basic(optional = false)
//     @Column(name = "order_id")
//     private int orderId;
//     @Basic(optional = false)
//     @Column(name = "product_id")
//     private int productId;

//     public OrderProductPK() {
//     }

//     public OrderProductPK(int orderId, int productId) {
//         this.orderId = orderId;
//         this.productId = productId;
//     }

//     public int getOrderId() {
//         return orderId;
//     }

//     public void setOrderId(int orderId) {
//         this.orderId = orderId;
//     }

//     public int getProductId() {
//         return productId;
//     }

//     public void setProductId(int productId) {
//         this.productId = productId;
//     }

//     @Override
//     public int hashCode() {
//         int hash = 0;
//         hash += (int) orderId;
//         hash += (int) productId;
//         return hash;
//     }

//     @Override
//     public boolean equals(Object object) {
//         // TODO: Warning - this method won't work in the case the id fields are not set
//         if (!(object instanceof OrderProductPK)) {
//             return false;
//         }
//         OrderProductPK other = (OrderProductPK) object;
//         if (this.orderId != other.orderId) {
//             return false;
//         }
//         if (this.productId != other.productId) {
//             return false;
//         }
//         return true;
//     }

//     @Override
//     public String toString() {
//         return "gov.iti.toycat.models.entities.OrderProductPK[ orderId=" + orderId + ", productId=" + productId + " ]";
//     }
    
// }
