package com.okstudy.shop.controller.board;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.okstudy.shop.domain.board.BoardService;


@Controller
@RequestMapping("/board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	private final BoardService boardService;
	
	@Inject
	public BoardController(BoardService boardService) {
		this.boardService = boardService;
	}
}
