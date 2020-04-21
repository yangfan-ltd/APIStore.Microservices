package com.zpc.item.controller;

import com.zpc.item.entity.Item;
import com.zpc.item.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ItemController {
    @Autowired
    private ItemService itemService;
    public Item queryItemById(@PathVariable("id") Long id){
        return this.itemService.queryItemById(id);
    }
}
