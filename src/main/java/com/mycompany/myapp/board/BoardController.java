package com.mycompany.myapp.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BoardController {

    @Autowired
    BoardService boardService;

    @RequestMapping(value="/board/list", method = RequestMethod.GET)
    public String boardlist(Model model) {
        model.addAttribute("list", boardService.getEatList());
        return "posts";
    }

    @RequestMapping(value = "/board/add", method = RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "/board/addok", method = RequestMethod.POST)
    public String addPostOK(BoardVO vo) {
        int i = boardService.insertEat(vo);
        if(i == 0)
            System.out.println("데이터 추가 실패 ");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/board/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getEat(id);
        model.addAttribute("boardVO", boardVO);
        return "editform";
    }

    @RequestMapping(value = "/board/editok", method = RequestMethod.POST)
    public String editPostOK(BoardVO vo) {
        int i = boardService.updateEat(vo);
        if(i == 0)
            System.out.println("데이터 수정 실패 ");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/board/review/{id}", method = RequestMethod.GET)
    public String reviewPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getEat(id);
        model.addAttribute("boardVO", boardVO);
        model.addAttribute("boardVO", boardVO);
        return "review";
    }

    @RequestMapping(value = "/board/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id) {
        int i = boardService.deleteEat(id);
        if(i == 0)
            System.out.println("데이터 삭제 실패 ");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }
}
