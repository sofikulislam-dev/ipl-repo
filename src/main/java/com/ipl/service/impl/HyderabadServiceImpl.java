package com.ipl.service.impl;

import com.ipl.dao.HyderabadDao;
import com.ipl.model.Player;
import com.ipl.service.HyderabadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HyderabadServiceImpl implements HyderabadService {

    @Autowired
    private HyderabadDao hyderabadDao;
    
    @Override
    public List<Player> getAll() {
        return hyderabadDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return hyderabadDao.findById(id);
    }

    @Override
    public void save(Player player) {
        hyderabadDao.save(player);
    }

    @Override
    public void update(Player player) {
        hyderabadDao.update(player);
    }

    @Override
    public void delete(int id) {
        hyderabadDao.delete(id);
    }
}
