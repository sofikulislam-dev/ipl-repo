package com.ipl.service;

import com.ipl.model.Player;

import java.util.List;

public interface PunjabService {

    List<Player> getAll();

    Player findById(int id);

    void save(Player player);

    void update(Player player);

    void delete(int id);
}
