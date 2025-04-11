package com.example.education;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class uerprofile {

    @Autowired
    JdbcTemplate jdbc;

    @GetMapping("/getproduct")
    public String getproduct() {
        return "product";
    }

    @PostMapping("/saveorder")
    public String save_order(@RequestParam("prod_id") Integer prod_id,
            @RequestParam("prod_qty") Integer prod_qty,
            @RequestParam("prod_qty") Integer order_qty,
            @RequestParam("prod_rate") Integer prod_rate,
            @RequestParam("adress") String adress,
            @RequestParam("user_id") String user_id, // Change user_id to String
            Model model) {
        Integer order_value = prod_rate * prod_qty;
        String sql = "INSERT INTO order_1 (prod_id, prod_rate, order_qty, adress, order_value, user_id) VALUES (?, ?, ?, ?, ?, ?)";
        jdbc.update(sql, prod_id, prod_rate, order_qty, adress, order_value, user_id);

        // Pass order details to the JSP page
        model.addAttribute("prod_id", prod_id);
        model.addAttribute("prod_qty", prod_qty);
        model.addAttribute("prod_qty", order_qty);
        model.addAttribute("prod_rate", prod_rate);
        model.addAttribute("adress", adress);
        model.addAttribute("order_value", order_value);
        model.addAttribute("user_id", user_id);

        return "success"; // Return the name of the JSP page to display order details
    }

    @GetMapping("/myorder")
    public String viewOrders(@RequestParam("user_id") String user_id, Model model) {
        String sql = "SELECT * FROM order_1 WHERE user_id = ?";
        List<Map<String, Object>> orders = jdbc.queryForList(sql, user_id);

        model.addAttribute("orders", orders);

        return "myorder"; // Return the name of the JSP page to display user's orders
    }
}
