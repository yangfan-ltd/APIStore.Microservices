package com.zpc.item.service;

import com.zpc.item.entity.Item;

import java.util.HashMap;
import java.util.Map;

public class ItemService {
    private static final Map<Long, Item> ITEM_MAP = new HashMap<Long,Item>();
    static {//准备一些静态数据，模拟数据库
        ITEM_MAP.put(1L,new Item(1L,"商品1","http://图片1","商品描述1",1000L));
        ITEM_MAP.put(2L,new Item(2L,"商品2","http://图片2","商品描述2",2000L));
        ITEM_MAP.put(3L,new Item(3L,"商品3","http://商品3","商品描述3",3000L));
        ITEM_MAP.put(4L,new Item(4L,"商品4","http://商品4","商品描述4",4000L));
        ITEM_MAP.put(5L,new Item(5L,"商品5","http://商品5","商品描述5",5000L));
        ITEM_MAP.put(6l,new Item(6L,"商品6","http://商品6","商品描述6",6000L));
        ITEM_MAP.put(7L,new Item(7L,"商品7","http://商品7","商品描述7",7000L));
        ITEM_MAP.put(8L,new Item(8L,"商品8","http://商品8","商品描述8",8000L));
        ITEM_MAP.put(9L,new Item(9L,"商品9","http://商品9","商品描述9",9000L));
        ITEM_MAP.put(10L,new Item(10L,"商品10","http://商品10","商品描述10",1000L));
    }

    public Item queryItemById(Long id){
        return ITEM_MAP.get(id);
    }
}
