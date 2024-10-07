package com.example.app_server.content_management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContentService {
    @Autowired
    private ContentRepository contentRepository;

    public Content addContent(Content content) {
        return contentRepository.save(content);
    }
}

