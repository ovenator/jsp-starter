package com.company.webapp.test.form;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test/form")
public class ValidatorController {

    @GetMapping
    public String validatorForm(Model model) {
        model.addAttribute("messageForm", new MessageForm());
        return "test/form/validator-form";
    }

    @GetMapping("/result")
    public String validatorResult(Model model) {
        return "test/form/validator-result";
    }

    @PostMapping("/result")
    public String validatorPost(Model model, @ModelAttribute("message") String message, BindingResult bindingResult) {
        model.addAttribute("messageForm", new MessageForm());
        return "test/form/validator-result";
    }
}