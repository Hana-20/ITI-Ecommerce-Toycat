package gov.iti.toycat;

import gov.iti.toycat.models.entities.OrderProduct;
import gov.iti.toycat.models.entities.OrderProductPK;
import gov.iti.toycat.repositories.connection.ConnectionManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

public class Main {
     public static void main(String[] args) {
     ConnectionManager conncetionManger=ConnectionManager.getInstance();
     EntityManagerFactory entityManagerFactory=conncetionManger.getEntityManagerFactory(); 
     EntityManager entityManger = entityManagerFactory.createEntityManager();
     OrderProductPK orderProductPK = new OrderProductPK();
     orderProductPK.setOrderId(1);
    orderProductPK.setProductId(1);
    //  OrderProduct orderProduct=entityManger.find(OrderProduct.class, orderProductPK);
    OrderProduct orderProduct=new OrderProduct();
     orderProduct.setQuantity(10);
     orderProduct.setOrderProductPK(orderProductPK);
     entityManger.getTransaction().begin();
     entityManger.persist( orderProduct);
     entityManger.getTransaction().commit();
     entityManger.close();
    // System.out.println(orderProduct.getProduct().getName());
    }
}
