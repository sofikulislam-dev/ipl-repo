package com.ipl.service.impl;

import com.ipl.dao.BangaloreDao;
import com.ipl.model.Player;
import com.ipl.service.BangaloreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BangaloreServiceImpl implements BangaloreService {

    @Autowired
    private BangaloreDao bangaloreDao;

    @Override
    public List<Player> getAll() {
        return bangaloreDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return bangaloreDao.findById(id);
    }

    @Override
    public void save(Player player) {
        bangaloreDao.save(player);
    }

    @Override
    public void update(Player player) {
        bangaloreDao.update(player);
    }

    @Override
    public void delete(int id) {
        bangaloreDao.delete(id);
    }
}
