package com.ipl.service.impl;

import com.ipl.dao.DelhiDao;
import com.ipl.model.Player;
import com.ipl.service.DelhiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DelhiServiceImpl implements DelhiService {

    @Autowired
    private DelhiDao delhiDao;

    @Override
    public List<Player> getAll() {
        return delhiDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return delhiDao.findById(id);
    }

    @Override
    public void save(Player player) {
        delhiDao.save(player);
    }

    @Override
    public void update(Player player) {
        delhiDao.update(player);
    }

    @Override
    public void delete(int id) {
        delhiDao.delete(id);
    }
}
