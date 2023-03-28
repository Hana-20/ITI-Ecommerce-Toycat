// /*
//  * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
//  * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
//  */
// package gov.iti.toycat.models.entities;

// import java.io.Serializable;
// import java.math.BigDecimal;
// import java.util.ArrayList;
// import java.util.Collection;
// import java.util.HashSet;
// import java.util.Set;

// import jakarta.persistence.Basic;
// import jakarta.persistence.CascadeType;
// import jakarta.persistence.Column;
// import jakarta.persistence.Entity;
// import jakarta.persistence.GeneratedValue;
// import jakarta.persistence.GenerationType;
// import jakarta.persistence.Id;
// import jakarta.persistence.JoinColumn;
// import jakarta.persistence.ManyToOne;
// import jakarta.persistence.NamedQueries;
// import jakarta.persistence.NamedQuery;
// import jakarta.persistence.OneToMany;
// import jakarta.persistence.OneToOne;
// import jakarta.persistence.Table;

// /**
//  *
//  * @author hanaa
//  */
// @Entity
// @Table(name = "cart")
// public class Cart implements Serializable {

//     private static final long serialVersionUID = 1L;
//     @Id
//     @GeneratedValue(strategy = GenerationType.IDENTITY)
//     @Basic(optional = false)
//     @Column(name = "id")
//     private Integer id;

//     // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation

//     // @OneToOne
//     // @JoinColumn(name = "user_email", referencedColumnName = "email")
//     @OneToOne(mappedBy = "cart")
//     private User user;

//     @OneToMany(cascade = CascadeType.ALL, mappedBy = "cart")
//     private Set<CartItem> cartItems = new HashSet<>();

//     public Cart() {
//     }

//     public Cart(Integer id) {
//         this.id = id;
//     }


//     public Integer getId() {
//         return id;
//     }

//     public void setId(Integer id) {
//         this.id = id;
//     }


//     public User getUser() {
//         return user;
//     }

//     public void setUser(User user) {
//         this.user = user;
//     }

//     public Collection<CartItem> getCartProductCollection() {
//         return cartItems;
//     }

   
//     @Override
//     public int hashCode() {
//         int hash = 0;
//         hash += (id != null ? id.hashCode() : 0);
//         return hash;
//     }

//     public static long getSerialversionuid() {
//         return serialVersionUID;
//     }

//     public void setCartProductCollection(Set<CartItem> cartItems) {
//         this.cartItems = cartItems;
//     }

//     public void addCartItem(CartItem cartItem) {
//         cartItems.add(cartItem);
//         cartItem.setCart(this);
//     }

//     public void removeCartItem(CartItem cartItem) {
//         cartItems.remove(cartItem);
//         cartItem.setCart(null);
//     }

//     @Override
//     public boolean equals(Object object) {
//         // TODO: Warning - this method won't work in the case the id fields are not set
//         if (!(object instanceof Cart)) {
//             return false;
//         }
//         Cart other = (Cart) object;
//         if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
//             return false;
//         }
//         return true;
//     }

//     @Override
//     public String toString() {
//         return "Cart [id=" + id + ", user=" + user + ", cartProductCollection="
//                 + cartItems + "]";
//     }

    
// }
