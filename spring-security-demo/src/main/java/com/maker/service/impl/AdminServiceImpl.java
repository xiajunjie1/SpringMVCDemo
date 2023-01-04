package com.maker.service.impl;

import com.maker.service.IAdminService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AdminServiceImpl implements IAdminService {
    @Override
    public boolean add() {
        return false;
    }

    @Override
    public boolean edit() {
        return false;
    }

    @Override
    public Object delete(List<String> ids) {
        return ids;
    }

    @Override
    public Object get(String username) {
        return "【service】"+username;
    }

    @Override
    public Object list() {
        return List.of("xia","jun");
    }
}
