package com.example.buysell.controllers;

import com.example.buysell.models.User;
import com.example.buysell.models.enums.Competention;
import com.example.buysell.models.enums.Role;
import com.example.buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "login";
    }

    @GetMapping("/profile")
    public String profile(Principal principal,
                          Model model) {
        User user = userService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("competentions", user.getCompetentions());
        model.addAttribute("desc", user.getDesc());
        return "profile";
    }

    @PostMapping("/profile")
    public String profileAddCompetention(Principal principal,
                          Model model) {
        User user = userService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("competention", user.getCompetentions());
        return "profile";
    }



    @GetMapping("/registration")
    public String registration(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "registration";
    }




    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if (!userService.createUser(user)) {

            model.addAttribute("errorMessage", "Пользователь с email: " + user.getEmail() + " уже существует");

            return "registration";
        }
        return "redirect:/login";
    }

    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user") User user, Model model, Principal principal) {
        model.addAttribute("user", user);
        model.addAttribute("userByPrincipal", userService.getUserByPrincipal(principal));
        model.addAttribute("products", user.getProducts());
        return "user-info";
    }



    @GetMapping("/user/edit/{user}")
    public String userEdit(@PathVariable("user") User user, Model model, Principal principal) {
        model.addAttribute("user", user);
        model.addAttribute("user", userService.getUserByPrincipal(principal));

        model.addAttribute("competentions", Competention.values());
        return "user-edit-all";
    }

    @PostMapping("/user/edit/{user}")
    public String updateUser(@PathVariable("user") int id,@ModelAttribute("user") User user, @RequestParam Map<String, String> form){
        System.out.println("Юзверь:          " + user.toString());
        userService.changeUserComp(user,form, id);
        return "redirect:/profile";
    }


}
