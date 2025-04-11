package com.example.education;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class AnoController {

    @Autowired
    JdbcTemplate jdbc;

    // @PostMapping("/login")
    // public String login_check(Model m, HttpSession session,
    // @RequestParam("user_id") String user_id,
    // @RequestParam("password") String password) {
    // System.out.println("login post");
    // ArrayList<String> ali = new ArrayList<String>();
    // List<String> li = jdbc.query("select * from user_master where user_id='" +
    // user_id + "' and password='"
    // + password + "'",
    // new RowMapper<String>() {
    // public String mapRow(ResultSet rs, int rowNum) throws SQLException {
    // ali.add(rs.getString(1));
    // ali.add(rs.getString(2));
    // ali.add(rs.getString(3));
    // ali.add(rs.getString(4));
    // return "";
    // }
    // });
    // if (ali.isEmpty()) {
    // m.addAttribute("sms", "invalid details");
    // return "login";
    // } else {
    // session.setAttribute("name", ali.get(0));
    // session.setAttribute("user_id", ali.get(1));
    // if ((ali.get(3)).equalsIgnoreCase("admin")) {
    // return "admindashboard";
    // } else if ((ali.get(3)).equalsIgnoreCase("student")) {
    // return "studentdashboard";
    // } else if ((ali.get(3)).equalsIgnoreCase("faculty")) {
    // return "facultydashboard";
    // } else {
    // return "login";
    // }
    // }
    // }

    // @GetMapping("/login")
    // public String login() {
    // System.out.println("login get");
    // return "login";
    // }

    // @PostMapping("/register")
    // public String register_save(Model m, @RequestParam("name") String name,
    // @RequestParam("user_id") String user_id,
    // @RequestParam("password") String password, @RequestParam("role_name") String
    // role_name) {
    // jdbc.execute(
    // "insert into user_master(name,user_id,password,role_name) values('" + name +
    // "','" + user_id + "','"
    // + password + "','" + role_name + "')");
    // m.addAttribute("sms", "register successful");
    // return "register";
    // }

    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @GetMapping("/")
    public static String home() {
        return "home";
    }

    @GetMapping("/contact")
    public static String contact() {
        return "contact";
    }

    @PostMapping("/contactus")
    public String contactus(Model m, @RequestParam("name") String name, @RequestParam("gmail") String gmail,
            @RequestParam("number") String number,
            @RequestParam("massage") String massage) {
        jdbc.execute(
                "insert into contact(name,gmail,number,massage) values('" + name + "','" + gmail + "','" + number
                        + "','" + massage + "')");
        m.addAttribute("sms", "Complited");
        return "contact";
    }

    @GetMapping("/gallery")
    public static String Gallery() {
        // System.out.println(" hello alok");
        return "gallery";
    }

    @PostMapping("/Sign-up")
    public String register_save(Model m, @RequestParam("name") String name, @RequestParam("user_id") String user_id,
            @RequestParam("password") String password, @RequestParam("role_name") String role_name) {
        jdbc.execute(
                "insert into user_master(name,user_id,password,role_name) values('" + name + "','" + user_id + "','"
                        + password + "','" + role_name + "')");
        m.addAttribute("sms", "Register Successful");
        return "Sign-up";
    }

    @GetMapping("/sign-up")
    public static String Signup() {
        return "Sign-up";
    }

    @GetMapping("/about")
    public static String Adout() {
        return "about";
    }

    @PostMapping("/Sign-in")
    public String login_chk(Model m, HttpSession session, @RequestParam("user_id") String user_id,
            @RequestParam("password") String password) {
        ArrayList<String> ali = new ArrayList<String>();
        List<String> li = jdbc.query(
                "select * from user_master where user_id='" + user_id + "' and password='" + password + "' ",
                new RowMapper<String>() {
                    public String mapRow(ResultSet rs, int rowNum) throws SQLException {
                        ali.add(rs.getString(1));
                        ali.add(rs.getString(2));
                        ali.add(rs.getString(3));
                        ali.add(rs.getString(4));
                        ali.add(rs.getString(5));
                        return "";
                    }
                });

        if (ali.isEmpty()) {
            m.addAttribute("sms", "Invalid Details");
            return "Sign-in";
        } else {
            if ((ali.get(4)).equalsIgnoreCase("1")) {
                session.setAttribute("name", ali.get(1));
                session.setAttribute("user_id", ali.get(2));

                if ((ali.get(3)).equalsIgnoreCase("admin")) {
                    return "admindashboard";
                } else if ((ali.get(3)).equalsIgnoreCase("user")) {
                    return "userdashboard";
                } else {
                    return "/Sign-in";
                }
            } else {
                m.addAttribute("sms", "Please Contact Admin");
                return "/Sign-in";
            }

        }
    }

    @GetMapping("/sign-in")
    public static String Signin() {
        return "Sign-in";
    }

    @GetMapping("/faq")
    public String faqdisplay(Model m) {
        System.out.println("FAQ");
        String sql = "select * from faq";
        List<Map<String, Object>> faqdisplay = jdbc.queryForList(sql);
        m.addAttribute("faqdisplay", faqdisplay);
        return "faq";
    }

    @GetMapping("/userhome")
    public static String userhome() {
        return "userhome";
    }

    @GetMapping("/clothes")
    public static String clothes() {
        return "clothes";
    }

    @GetMapping("/footwear")
    public static String footwear() {
        return "footwear";
    }

}
