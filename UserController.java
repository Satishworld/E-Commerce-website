package com.example.education;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    JdbcTemplate jdbc;

    @PostMapping("uprofile")
    public String u_profile(HttpSession session, Model model, @RequestParam("f") MultipartFile f,
            @RequestParam("age") String age) throws IOException {
        String user_id = (String) session.getAttribute("user_id");
        String sql = "INSERT INTO profile (user_id,photo,age) VALUES (?,?,?)";
        jdbc.update(sql, user_id, f.getBytes(), age);

        return "uprofile";

    }

    @GetMapping("uprofile")
    public String uprofile(HttpSession session, Model model) {
        String user_id = (String) session.getAttribute("user_id");
        String sql = "SELECT name, user_master.user_id,role_name,photo,age FROM user_master left join profile on user_master.user_id=profile.user_id where user_master.user_id='"
                + user_id + "'";
        List<Map<String, Object>> userprofile = jdbc.queryForList(sql);
        model.addAttribute("userprofile", userprofile);
        model.addAttribute("imageData", userprofile.get(0).get("photo"));
        return "uprofile";
    }
    

}
