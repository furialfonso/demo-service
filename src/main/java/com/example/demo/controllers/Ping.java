package com.example.demo.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Ping {

  @GetMapping("/ping")
  public String getMethodName() {
    return "BB";
  }
}
