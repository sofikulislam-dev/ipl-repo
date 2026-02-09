package com.ipl.controller;

import com.ipl.model.Player;
import com.ipl.service.KolkataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/kolkata")
public class KolkataController {

    @Autowired
    private KolkataService service;

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("player", service.getAll());
        return "kolkata/kolkata-list";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("mode", "add");
        return "kolkata/player-form";
    }

    @GetMapping("/player/{id}")
    public String playerView(@PathVariable("id") int id, Model model) {
        model.addAttribute("player", service.findById(id));
        return "kolkata/player-view";
    }

    @PostMapping("/save")
    public String saveOrUpdate(@RequestParam("mode") String mode, Player player) {
        if ("add".equals(mode)) {
            service.save(player);
        } else {
            service.update(player);
        }
        return "redirect:/kolkata/list";
    }

    @GetMapping("/edit")
    public String editForm(@RequestParam("id") int id, Model model) {
        model.addAttribute("player", service.findById(id));
        model.addAttribute("mode", "edit");
        return "kolkata/player-form";
    }

    @GetMapping("/delete")
    public String deletePlayer(@RequestParam("id") int id) {
        service.delete(id);
        return "redirect:/kolkata/list";
    }



}
