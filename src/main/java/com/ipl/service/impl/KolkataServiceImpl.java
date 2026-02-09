package com.ipl.service.impl;

import com.ipl.dao.KolkataDao;
import com.ipl.model.Player;
import com.ipl.service.KolkataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KolkataServiceImpl implements KolkataService {

    @Autowired
    private KolkataDao kolkataDao;
    
    @Override
    public List<Player> getAll() {
        return kolkataDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return kolkataDao.findById(id);
    }

    @Override
    public void save(Player player) {
        kolkataDao.save(player);
    }

    @Override
    public void update(Player player) {
        kolkataDao.update(player);
    }

    @Override
    public void delete(int id) {
        kolkataDao.delete(id);
    }
}
