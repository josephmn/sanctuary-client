package com.sanctuary.customer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import io.github.cdimascio.dotenv.Dotenv;

/**
 * Main class for the sanctuary application.
 * This class serves as the entry point for the Spring Boot application.
 * It loads environment variables from a .env file using the Dotenv library.
 *
 * @author Joseph Magallanes
 * @since 2026-09-13
 */
@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        final Dotenv dotenv = Dotenv.configure().load();
        dotenv.entries().forEach(entry -> System.setProperty(entry.getKey(), entry.getValue()));
        SpringApplication.run(Application.class, args);
    }
}
