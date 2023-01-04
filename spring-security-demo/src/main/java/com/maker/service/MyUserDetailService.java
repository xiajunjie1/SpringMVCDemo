package com.maker.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MyUserDetailService implements UserDetailsService {
   private static final Logger LOGGER= LoggerFactory.getLogger(MyUserDetailService.class);
   @Autowired
   private PasswordEncoder encoder;

    /**
    * SpringSecurity通过调用该方法进行用户的验证\
    * 此处的username是在SpringSecurity内部登录界面上输入的用户名
    * */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        //本次操作将默认使用用户名xia（如果要是换成数据库，此处可通过数据库加载）
        //GrantedAuthority来描述所有用户所具备的权限
        List<GrantedAuthority> authorityList=new ArrayList<>();
        LOGGER.info("获取到的用户名：{}",username);
        if("xia".equals(username)){
            // 在进行授权配置的时候，SpringSecurity权限必须使用”ROLE_“前缀配置
            authorityList.add(new SimpleGrantedAuthority("ROLE_NEWS"));//授权项
            authorityList.add(new SimpleGrantedAuthority("ROLE_SYSTEM"));
            authorityList.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        }
        if("jun".equals(username)){
            authorityList.add(new SimpleGrantedAuthority("ROLE_SYSTEM"));
        }
        //所有用户的公共权限
        authorityList.add(new SimpleGrantedAuthority("ROLE_MESSAGE"));
        //密码是由固定明文通过BcryptPasswordEncoder加密所得结果
        User user=new User(username,encoder.encode("jayjxia"),authorityList);

        return user;
    }
}
