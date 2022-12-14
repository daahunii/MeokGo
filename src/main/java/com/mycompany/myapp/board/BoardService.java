package com.mycompany.myapp.board;

import java.util.List;

public interface BoardService {
    public int insertEat(BoardVO vo);
    public int deleteEat(int id);
    public int updateEat(BoardVO vo);
    public BoardVO getEat(int seq);
    public List<BoardVO> getEatList();
}
