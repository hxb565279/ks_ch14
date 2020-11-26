package com.hxb.controller;


import com.hxb.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
   @RequestMapping("/testJson")
   @ResponseBody
    public User testJson(@RequestBody User user){
       System.out.println("user="+user);
       return user;
   }



   @RequestMapping(value = "/user/{id}",method = RequestMethod.GET)
   @ResponseBody
   public User selectUser(@PathVariable("id") String id){
      System.out.println("id="+id);
      User user = new User();
      if (id.equals("1234")){
         user.setUsername("tom");
      }
      return user;
   }

}
