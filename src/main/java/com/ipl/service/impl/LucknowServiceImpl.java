package com.ipl.service.impl;

import com.ipl.dao.LucknowDao;
import com.ipl.model.Player;
import com.ipl.service.LucknowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LucknowServiceImpl implements LucknowService {

    @Autowired
    private LucknowDao lucknowDao;

    @Override
    public List<Player> getAll() {
        return lucknowDao.getAll();
    }

    @Override
    public Player findById(int id) {
        return lucknowDao.findById(id);
    }

    @Override
    public void save(Player player) {
        lucknowDao.save(player);
    }

    @Override
    public void update(Player player) {
        lucknowDao.update(player);
    }

    @Override
    public void delete(int id) {
        lucknowDao.delete(id);
    }
}
