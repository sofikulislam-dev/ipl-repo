package com.ipl.controller;

import com.ipl.model.Player;
import com.ipl.service.LucknowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/lucknow")
public class LucknowController {
    
    @Autowired
    private LucknowService service;

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("player", service.getAll());
        return "lucknow/lucknow-list";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("mode", "add");
        return "lucknow/player-form";
    }

    @GetMapping("/player/{id}")
    public String playerView(@PathVariable("id") int id, Model model) {
        model.addAttribute("player", service.findById(id));
        return "lucknow/player-view";
    }

    @PostMapping("/save")
    public String saveOrUpdate(@RequestParam("mode") String mode, Player player) {
        if ("add".equals(mode)) {
            service.save(player);
        } else {
            service.update(player);
        }
        return "redirect:/lucknow/list";
    }

    @GetMapping("/edit")
    public String editForm(@RequestParam("id") int id, Model model) {
        model.addAttribute("player", service.findById(id));
        model.addAttribute("mode", "edit");
        return "lucknow/player-form";
    }

    @GetMapping("/delete")
    public String deletePlayer(@RequestParam("id") int id) {
        service.delete(id);
        return "redirect:/lucknow/list";
    }

}
