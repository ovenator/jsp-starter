package com.company.webapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
@RequestMapping("/book")
public class BookController {


    @GetMapping("/viewBooks")
    public String viewBooks(Model model) {
        model.addAttribute("books", new ArrayList());
        return "view-books";
    }
}