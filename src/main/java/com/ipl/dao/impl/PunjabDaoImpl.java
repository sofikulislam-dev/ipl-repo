package com.ipl.dao.impl;

import com.ipl.dao.PunjabDao;
import com.ipl.model.Player;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class PunjabDaoImpl implements PunjabDao {

    private final JdbcTemplate jdbcTemplate;

    public PunjabDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Player> rowMapper = new RowMapper<Player>() {
        @Override
        public Player mapRow(ResultSet rs, int rowNum) throws SQLException {

            Player player = new Player();
            player.setId(rs.getInt("id"));
            player.setName(rs.getString("name"));
            player.setAge(rs.getInt("age"));
            player.setRole(rs.getString("role"));
            player.setMatches(rs.getInt("matches"));
            player.setStrike(rs.getFloat("strike"));
            player.setPrice(rs.getString("price"));
            player.setRuns(rs.getInt("runs"));
            player.setNationality(rs.getString("nationality"));

            return player;
        }
    };

    @Override
    public List<Player> getAll() {
        String sql = "select * from punjab";
        return jdbcTemplate.query(sql, rowMapper);
    }

    @Override
    public Player findById(int id) {
        String sql = "select * from punjab where id =?";
        return jdbcTemplate.queryForObject(sql, rowMapper, id);
    }

    @Override
    public void save(Player player) {
        String sql = "insert into punjab(id, name, age, role, matches, strike, price, runs, nationality) " +
                "values(?,?,?,?,?,?,?, ?, ?)";

        jdbcTemplate.update(sql, player.getId(), player.getName(), player.getAge(), player.getRole(), player.getMatches(), player.getStrike(),
                player.getPrice(), player.getRuns(), player.getNationality());
    }

    @Override
    public void update(Player player) {

        String sql = "update punjab set name=?, age=?, role=?, matches=?, " +
                "strike=?, price=?, runs=?, nationality=? where id=?";

        jdbcTemplate.update(sql, player.getName(), player.getAge(), player.getRole(),
                player.getMatches(), player.getStrike(), player.getPrice(), player.getRuns(),
                player.getNationality(), player.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "delete from punjab where id = ?";
        jdbcTemplate.update(sql, id);
    }
}
