package com.ipl.service.impl;

import com.ipl.dao.RajasthanDao;
import com.ipl.model.Player;
import com.ipl.service.RajasthanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RajasthanServiceImpl implements RajasthanService {

    @Autowired
    private RajasthanDao rajasthanDao;
    
    @Override
    public List<Player> getAll() {
        return rajasthanDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return rajasthanDao.findById(id);
    }

    @Override
    public void save(Player player) {
        rajasthanDao.save(player);
    }

    @Override
    public void update(Player player) {
        rajasthanDao.update(player);
    }

    @Override
    public void delete(int id) {
        rajasthanDao.delete(id);
    }
}
