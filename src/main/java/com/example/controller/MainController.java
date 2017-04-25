package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * Created by zhs on 2017/4/24.
 */
@Controller
public class MainController {

    @RequestMapping(value = "/m/login.do", method = RequestMethod.GET)
    public String login() {
        return "/msite/login";
    }
    @RequestMapping(value = "/m/index.do", method = RequestMethod.GET)
    public String index() {
        return "/msite/index";
    }
    @RequestMapping("/m/video.do")
    public String vedio() {
        return "/msite/video";
    }
    @RequestMapping("/m/terminal.do")
    public String terminal() {
        return "/msite/terminal";
    }
    @RequestMapping("/m/electricalBox.do")
    public String electricalBox() {
        return "/msite/electricalBox";
    }
    @RequestMapping(value = "/admin/index.do", method = RequestMethod.GET)
    public String adminindex() {
        return "/admin/index";
    }

    @RequestMapping("/admin/menu.do")
    public String menu() {
        return "/common/menu";
    }

    @RequestMapping("/admin/menu_left.do")
    public String menu_left() {
        return "/common/menu_left";
    }
}
