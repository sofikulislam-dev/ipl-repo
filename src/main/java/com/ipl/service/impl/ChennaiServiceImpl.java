package com.ipl.service.impl;

import com.ipl.dao.ChennaiDao;
import com.ipl.model.Player;
import com.ipl.service.ChennaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChennaiServiceImpl implements ChennaiService {

    @Autowired
    private ChennaiDao chennaiDao;

    @Override
    public List<Player> getAll() {
        return chennaiDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return chennaiDao.findById(id);
    }

    @Override
    public void save(Player player) {
        chennaiDao.save(player);
    }

    @Override
    public void update(Player player) {
        chennaiDao.update(player);
    }

    @Override
    public void delete(int id) {
        chennaiDao.delete(id);
    }
}
