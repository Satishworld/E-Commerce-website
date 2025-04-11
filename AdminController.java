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
public class AdminController {
    @Autowired
    JdbcTemplate jdbc;

    @GetMapping("/admin")
    public static String index() {
        return "adminheader";
    }

    @GetMapping("/admindashboard")
    public static String dash() {
        return "admindashboard";
    }

    @GetMapping("/user")
    public String user(Model model) {
        System.out.println("User Page");
        String sql = "select * from user_master where role_name !='admin'";
        List<Map<String, Object>> user_master = jdbc.queryForList(sql);
        model.addAttribute("user_master", user_master);
        return "user";
    }

    @PostMapping("/manageuser")
    public String manageuser(@RequestParam("user_id") String user_id, @RequestParam("btn") String btn, Model model) {
        if (btn.equalsIgnoreCase("Delete")) {
            String sql = "delete from user_master where user_id=?";
            jdbc.update(sql, user_id);
            return user(model);
        }
        String sql = "select * from user_master where user_id='" + user_id + "'";
        List<Map<String, Object>> usermaster = jdbc.queryForList(sql);
        model.addAttribute("user_master", usermaster);
        return "edituser";
    }

    @PostMapping("/updateuser")
    public String updateuser(@RequestParam("user_id") String user_id, @RequestParam("name") String name,
            @RequestParam("role_name") String role_name, @RequestParam("status") String status, Model model) {
        String sql = "update user_master set name=?, role=?, status=? where user_id=?";
        jdbc.update(sql, name, role_name, status, user_id);
        return user(model);
    }

    @GetMapping("/editfaq")
    public static String faq() {
        return "editfaq";
    }

    @PostMapping("/updatefaq")
    public String updatefaq(@RequestParam("question") String question, @RequestParam("answer") String answer,
            Model model) {
        String sql = "insert into faq(question, answer) values ('" + question + "','" + answer + "')";
        jdbc.execute(sql);
        model.addAttribute("faq", "FAQ Added");
        return "editfaq";
    }

    @GetMapping("/massage")
    public String massage(Model model) {
        System.out.println("massage");
        String sql = "select * from contact ";
        List<Map<String, Object>> contact = jdbc.queryForList(sql);
        model.addAttribute("contact", contact);
        return "massage";
    }

    @PostMapping("/managecontactus")
    public String managecontact(@RequestParam("name") String name, @RequestParam("btn") String btn, Model model) {
        String sql = "delete from contact where name=?";
        jdbc.update(sql, name);
        return massage(model);
    }

    @GetMapping("/showfaq")
    public String showfaq(Model model) {
        String sql = "select * from faq";
        List<Map<String, Object>> faq1 = jdbc.queryForList(sql);
        model.addAttribute("faq", faq1);
        return "showfaq";
    }

    @PostMapping("/show")
    public String show(@RequestParam("question") String question, @RequestParam("btn") String btn, Model model) {
        if (btn.equalsIgnoreCase("Delete")) {
            String sql = "delete from faq where question=?";
            jdbc.update(sql, question);
            return showfaq(model);
        }
        String sql = "select * from faq where question='" + question + "'";
        List<Map<String, Object>> faq = jdbc.queryForList(sql);
        model.addAttribute("faq", faq);
        return "showfaq";
    }

    @GetMapping("/order")
    public String order(Model model) {
        System.out.println("massage");
        String sql = "select * from order_1 ";
        List<Map<String, Object>> order = jdbc.queryForList(sql);
        model.addAttribute("order", order);
        return "order";
    }
    @PostMapping("/manageorder")
    public String manageOrder(@RequestParam("order_id") Long orderId, @RequestParam("btn") String btn, Model model) {
        if (btn.equalsIgnoreCase("Delete")) {
            String sql = "DELETE FROM order_1 WHERE order_id = ?";
            jdbc.update(sql, orderId);
            return "redirect:/order"; // Redirect to the order page after deletion
        }
        // Additional logic for other actions can be added here if necessary
        return "order"; // Return to the order page in case of no action or different action
    }

}