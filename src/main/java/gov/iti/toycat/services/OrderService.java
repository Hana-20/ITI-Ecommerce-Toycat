package gov.iti.toycat.services;

import java.math.BigDecimal;
import java.util.List;

import gov.iti.toycat.models.entities.CartItem;
import gov.iti.toycat.models.entities.User;
import gov.iti.toycat.repositories.OrderRepository;
import gov.iti.toycat.repositories.UserRepository;

public class OrderService {

    OrderRepository orderRepository;
    UserRepository userRepository;
    CartService cartService;

    public OrderService() {
        this.orderRepository = new OrderRepository();
        this.userRepository = new UserRepository();
        cartService = new CartService();
    }

    public boolean placeOrderForUser(String userEmail) {
        User user = userRepository.getUser(userEmail);
        if (user.getCart().size() == 0)
            return false;

        double credit = user.getCreditLimit();
        BigDecimal cartTotal = getCartPrice(user.getCart()) ;
        if (BigDecimal.valueOf(credit).compareTo(cartTotal) < 0) {
            // No Enough Money
            return false;
        }

        System.out.println("cartTotal.longValue()" + cartTotal.longValue());
        orderRepository.createOrderForUser(userEmail);
        cartService.deleteAllCartItemsForUser(userEmail);

        user.setCreditLimit(credit - cartTotal.doubleValue());
        userRepository.updateUserData(user);
        return true;
    }

    private BigDecimal getCartPrice(List<CartItem> cart) {

        BigDecimal totalPrice = BigDecimal.valueOf(0);
        for (CartItem cartItem : cart) {
            totalPrice = totalPrice
                    .add(cartItem.getProduct().getPrice().multiply(BigDecimal.valueOf(cartItem.getQuantity())));
        }

        return totalPrice;
    }
}
