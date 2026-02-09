package com.ipl.service.impl;

import com.ipl.dao.MumbaiDao;
import com.ipl.model.Player;
import com.ipl.service.MumbaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MumbaiServiceImpl implements MumbaiService {

    @Autowired
    private MumbaiDao mumbaiDao;
    
    @Override
    public List<Player> getAll() {
        return mumbaiDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return mumbaiDao.findById(id);
    }

    @Override
    public void save(Player player) {
        mumbaiDao.save(player);
    }

    @Override
    public void update(Player player) {
        mumbaiDao.update(player);
    }

    @Override
    public void delete(int id) {
        mumbaiDao.delete(id);
    }
}
