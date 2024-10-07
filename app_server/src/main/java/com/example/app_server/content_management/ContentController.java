package com.example.app_server.content_management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ContentController {
    @Autowired
    private ContentService contentService;

    @PostMapping("/contents")
    public Content addContent(@RequestBody Content content) {
        return contentService.addContent(content);
    }
}

