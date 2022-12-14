package com.mycompany.myapp.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertEat(BoardVO vo) {
        int result = sqlSession.insert("EAT.insertEat", vo);
        return result;
    }

    public int deleteEat(int id) {
        int result = sqlSession.delete("EAT.deleteEat", id);
        return result;
    }

    public int updateEat(BoardVO vo) {
        int result = sqlSession.update("EAT.updateEat", vo);
        return result;
    }

    public BoardVO getEat(int seq) {
        BoardVO one = sqlSession.selectOne("EAT.getEat", seq);
        return one;
    }

    public List<BoardVO> getEatList() {
        List<BoardVO> list = sqlSession.selectList("EAT.getEatList");
        return list;
    }

}
