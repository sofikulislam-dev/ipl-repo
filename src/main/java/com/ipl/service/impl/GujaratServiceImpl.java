package com.ipl.service.impl;

import com.ipl.dao.GujaratDao;
import com.ipl.model.Player;
import com.ipl.service.GujaratService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GujaratServiceImpl implements GujaratService {

    @Autowired
    private GujaratDao gujaratDao;

    @Override
    public List<Player> getAll() {
        return gujaratDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return gujaratDao.findById(id);
    }

    @Override
    public void save(Player player) {
        gujaratDao.save(player);
    }

    @Override
    public void update(Player player) {
        gujaratDao.update(player);
    }

    @Override
    public void delete(int id) {
        gujaratDao.delete(id);
    }
}
