package com.mycompany.myapp.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    BoardDAO boardDAO;

    @Override
    public int insertEat(BoardVO vo) {
        return boardDAO.insertEat(vo);
    }
    @Override
    public int deleteEat(int id) {
        return boardDAO.deleteEat(id);
    }
    @Override
    public int updateEat(BoardVO vo) {
        return boardDAO.updateEat(vo);
    }
    @Override
    public BoardVO getEat(int seq) {return boardDAO.getEat(seq);}
    @Override
    public List<BoardVO> getEatList() {
        return boardDAO.getEatList();
    }
}
