package com.ipl.service.impl;

import com.ipl.dao.PunjabDao;
import com.ipl.model.Player;
import com.ipl.service.PunjabService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PunjabServiceImpl implements PunjabService {

    @Autowired
    private PunjabDao punjabDao;
    
    @Override
    public List<Player> getAll() {
        return punjabDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return punjabDao.findById(id);
    }

    @Override
    public void save(Player player) {
        punjabDao.save(player);
    }

    @Override
    public void update(Player player) {
        punjabDao.update(player);
    }

    @Override
    public void delete(int id) {
        punjabDao.delete(id);
    }
}
