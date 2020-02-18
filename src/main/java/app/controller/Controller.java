package app.controller;

import app.repositiry.UsrRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@RestController
public class Controller {

    @Autowired
    private UsrRepository userRopository;

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello " + userRopository.findById(1L).get().toString();
    }
}