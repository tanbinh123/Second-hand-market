package com.controller;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;

/**
 * @program: www
 * @description: 监听器
 * @author: cnzxo
 * @create: 2019-08-15 17:39
 **/

public class ReadContext implements ServletContextAttributeListener {

    @Override
    public void attributeAdded(ServletContextAttributeEvent scae) {

        String name = scae.getName();
        Object value = scae.getValue();
    }
    @Override
    public void attributeRemoved(ServletContextAttributeEvent scae) {

        String name = scae.getName();
        Object value = scae.getValue();
    }
    @Override
    public void attributeReplaced(ServletContextAttributeEvent scae) {

        String name = scae.getName();
        Object value = scae.getValue();
    }
}
